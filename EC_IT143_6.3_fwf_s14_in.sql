SELECT 
ContactName,
CASE 
    WHEN CHARINDEX(' ', ContactName) > 0
    THEN RIGHT(ContactName, LEN(ContactName) - CHARINDEX(' ', ContactName))
    ELSE ContactName
END AS ad_hoc,
dbo.fn_GetLastName(ContactName) AS function_result
FROM dbo.t_w3_schools_customers;