CREATE FUNCTION dbo.fn_GetLastName (@ContactName VARCHAR(100))
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @last_name VARCHAR(50);

    IF CHARINDEX(' ', @ContactName) > 0
        SET @last_name =
            RIGHT(@ContactName, LEN(@ContactName) - CHARINDEX(' ', @ContactName));
    ELSE
        SET @last_name = @ContactName;

    RETURN @last_name;
END;
GO