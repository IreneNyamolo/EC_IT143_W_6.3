CREATE FUNCTION dbo.fn_GetFirstName (@ContactName VARCHAR(100))
RETURNS VARCHAR(50)
AS
BEGIN
    RETURN LEFT(@ContactName, CHARINDEX(' ', @ContactName + ' ') - 1);
END;
GO