CREATE FUNCTION IsPalindrom
(
    @P AS INT
)
RETURNS BIT
AS
BEGIN
    DECLARE @StrP AS VARCHAR(20) = CAST(@P AS VARCHAR(20))
    DECLARE @Reversed AS VARCHAR(20) = ''
    DECLARE @Len AS INT = LEN(@StrP)
    DECLARE @I AS INT = @Len
    DECLARE @Result AS BIT  

    WHILE @I >= 1
    BEGIN
        SET @Reversed = @Reversed + SUBSTRING(@StrP, @I, 1)
        SET @I = @I - 1
    END

    IF @StrP = @Reversed
        SET @Result = 1
    ELSE
        SET @Result = 0

    RETURN @Result
END
GO

SELECT dbo.IsPalindrom(12321) AS [12321 — палиндром?] -- 1
SELECT dbo.IsPalindrom(12345) AS [12345 — палиндром?] -- 0
SELECT dbo.IsPalindrom(1) AS [1 — палиндром?] -- 1
SELECT dbo.IsPalindrom(1221) AS [1221 — палиндром?] -- 1
