CREATE PROC Задание4
    @MinPop AS BIGINT,
    @MaxPop AS BIGINT
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
        Население BETWEEN @MinPop AND @MaxPop
END
GO

EXECUTE Задание4 10000000, 50000000
