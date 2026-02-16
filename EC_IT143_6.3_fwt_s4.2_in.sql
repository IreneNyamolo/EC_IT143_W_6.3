CREATE TRIGGER trg_UpdateModified
ON dbo.t_w3_schools_customers
AFTER UPDATE
AS
BEGIN
    UPDATE c
    SET 
        last_modified_date = GETDATE(),
        last_modified_by = SUSER_NAME()
    FROM dbo.t_w3_schools_customers c
    INNER JOIN inserted i
    ON c.CustomerID = i.CustomerID;
END;
GO