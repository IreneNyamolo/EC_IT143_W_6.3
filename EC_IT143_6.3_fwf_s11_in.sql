SELECT 
CustomerID,
ContactName,
CASE 
    WHEN CHARINDEX(' ', ContactName) > 0
    THEN RIGHT(ContactName, LEN(ContactName) - CHARINDEX(' ', ContactName))
    ELSE ContactName
END AS last_name
FROM dbo.t_w3_schools_customers;