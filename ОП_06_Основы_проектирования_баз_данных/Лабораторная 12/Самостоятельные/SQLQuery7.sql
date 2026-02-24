CREATE FUNCTION Задание7
(
    @Буква AS CHAR(1)
)
RETURNS INT
AS
BEGIN
    DECLARE @Количество AS INT
    SELECT @Количество = COUNT(*)
    FROM Страны
    WHERE CHARINDEX(@Буква, Название) = 0
    RETURN @Количество
END
GO
SELECT dbo.Задание7('А') AS [Количество стран без буквы А]
