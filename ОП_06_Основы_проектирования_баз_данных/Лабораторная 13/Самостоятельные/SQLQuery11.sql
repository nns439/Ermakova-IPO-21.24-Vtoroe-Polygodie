CREATE PROC InvDigit
    @K AS BIGINT OUTPUT
AS
BEGIN
    DECLARE @Обратное AS BIGINT = 0
    DECLARE @Остаток AS INT

    WHILE @K > 0
    BEGIN
        SET @Остаток = @K % 10
        SET @Обратное = @Обратное * 10 + @Остаток
        SET @K = @K / 10
    END

    SET @K = @Обратное
END
GO

DECLARE @Исходное AS BIGINT = 12345
EXECUTE InvDigit @Исходное OUTPUT
SELECT @Исходное AS [Обращённое число]
