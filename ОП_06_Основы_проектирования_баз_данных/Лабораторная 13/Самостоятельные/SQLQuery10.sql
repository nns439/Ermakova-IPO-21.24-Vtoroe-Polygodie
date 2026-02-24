CREATE PROC AddRightDigit
    @K AS BIGINT OUTPUT,
    @D AS INT
AS
BEGIN
    IF @D BETWEEN 0 AND 9
        SET @K = @K * 10 + @D
    ELSE
        RAISERROR('Цифра D должна быть в диапазоне [0..9]', 16, 1)
END
GO

DECLARE @Число AS BIGINT = 123
EXECUTE AddRightDigit @Число OUTPUT, 7
SELECT @Число AS [Результат]
