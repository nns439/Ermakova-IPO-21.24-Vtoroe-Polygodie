CREATE FUNCTION Задание4()
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @Страна AS VARCHAR(50);

    WITH RankedCountries AS (
        SELECT
            Название,
            ROW_NUMBER() OVER (ORDER BY Население DESC) AS Rank
        FROM Страны
    )
    SELECT TOP 1 @Страна = Название
    FROM RankedCountries
    WHERE Rank = 3;

    RETURN @Страна;
END;
GO

SELECT dbo.Задание4() AS [Третья по населению страна];
