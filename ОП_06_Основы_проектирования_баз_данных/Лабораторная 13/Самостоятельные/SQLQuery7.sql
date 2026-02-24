CREATE PROC Задание7
AS
BEGIN
    IF OBJECT_ID('Страны_И', 'U') IS NOT NULL
        DROP TABLE Страны_И

    SELECT
        Название,
        Столица,
        Площадь,
        Население,
        Континент
    INTO
        Страны_И
    FROM
        Страны
    WHERE
        LEFT(Название, 1) = 'И'
END
GO

EXECUTE Задание7
