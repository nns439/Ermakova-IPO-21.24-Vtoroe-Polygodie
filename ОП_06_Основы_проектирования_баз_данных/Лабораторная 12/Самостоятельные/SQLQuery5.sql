CREATE FUNCTION Задание5
(
    @Континент AS VARCHAR(50) = 'Азия'
)
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @Страна AS VARCHAR(50)
    SELECT TOP 1 @Страна = Название
    FROM Страны
    WHERE Континент = @Континент
    ORDER BY Население DESC
    RETURN @Страна
END
GO
SELECT dbo.Задание5('Африка') AS [Самая населённая страна в Африке]
SELECT dbo.Задание5(DEFAULT) AS [Самая населённая страна в Азии]
