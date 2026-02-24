CREATE PROC Задание5
    @Буква AS CHAR(1),
    @Количество AS INT OUTPUT
AS
BEGIN
    SELECT
        @Количество = COUNT(*)
    FROM
        Страны
    WHERE
        CHARINDEX(@Буква, Название) = 0
END
GO

DECLARE @Кол AS INT
DECLARE @Бук AS CHAR(1)
SET @Бук = 'А'
EXECUTE Задание5 @Бук, @Кол OUTPUT
SELECT @Кол AS [Количество стран без буквы]
