SELECT 
ContactName,
LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) AS ad_hoc,
dbo.fn_GetFirstName(ContactName) AS function_result
FROM dbo.t_w3_schools_customers;