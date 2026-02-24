CREATE PROC Задание3
    @Континент AS VARCHAR(50)
AS
BEGIN
    SELECT
        Название,
        Столица,
        Площадь,
        Население,
        Континент
    FROM
        Страны
    WHERE
        Континент <> @Континент
END
GO

EXECUTE Задание3 'Европа'
