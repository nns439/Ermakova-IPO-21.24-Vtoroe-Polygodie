CREATE FUNCTION Задание3
(
    @Континент AS VARCHAR(50)
)
RETURNS FLOAT
AS
BEGIN
    DECLARE @Плотность AS FLOAT
    SELECT @Плотность = ROUND(SUM(CAST(Население AS FLOAT)) / SUM(Площадь), 2)
    FROM Страны
    WHERE Континент = @Континент
    RETURN @Плотность
END
GO
SELECT dbo.Задание3('Европа') AS [Плотность населения Европы]
