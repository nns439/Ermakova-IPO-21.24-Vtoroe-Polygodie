CREATE PROC Задание2
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
END
GO

EXECUTE Задание2
