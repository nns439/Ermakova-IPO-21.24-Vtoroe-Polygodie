CREATE FUNCTION Задание2
(
    @Население AS INT
)
RETURNS FLOAT
AS
BEGIN
    DECLARE @Население_млн AS FLOAT
    SET @Население_млн = ROUND(CAST(@Население AS FLOAT) / 1000000, 2)
    RETURN @Население_млн
END
GO
SELECT
    Название,
    Столица,
    Континент,
    Площадь,
    dbo.Задание2(Население) AS [Население млн чел.]
FROM Страны
