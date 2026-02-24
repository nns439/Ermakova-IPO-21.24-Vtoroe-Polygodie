CREATE PROC DigitCountSum
    @K AS BIGINT,
    @C AS INT OUTPUT,
    @S AS INT OUTPUT
AS
BEGIN
    SET @C = 0
    SET @S = 0

    WHILE @K > 0
    BEGIN
        SET @C = @C + 1
        SET @S = @S + (@K % 10)
        SET @K = @K / 10
    END
END
GO

DECLARE @Число AS BIGINT = 12345
DECLARE @Кол AS INT
DECLARE @Сумма AS INT
EXECUTE DigitCountSum @Число, @Кол OUTPUT, @Сумма OUTPUT
SELECT @Кол AS [Количество цифр], @Сумма AS [Сумма цифр]
