CREATE PROC Задание6
    @Континент AS VARCHAR(50) = 'Африка'
AS
BEGIN
    SELECT TOP 5
        Название,
        Столица,
        Площадь,
        Население,
        Континент
    FROM
        Страны
    WHERE
        Континент = @Континент
    ORDER BY
        Население DESC
END
GO

EXECUTE Задание6 DEFAULT
