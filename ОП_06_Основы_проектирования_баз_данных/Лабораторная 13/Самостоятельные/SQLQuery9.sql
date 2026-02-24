CREATE PROC Задание9
    @Число AS BIGINT,
    @КолЦифр AS INT OUTPUT
AS
BEGIN
    SET @КолЦифр = LEN(CAST(ABS(@Число) AS VARCHAR))
END
GO

DECLARE @Цифры AS INT
EXECUTE Задание9 12345, @Цифры OUTPUT
SELECT @Цифры AS [Количество цифр]
