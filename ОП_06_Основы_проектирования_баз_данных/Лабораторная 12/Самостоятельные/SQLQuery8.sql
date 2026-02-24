CREATE FUNCTION Задание8
(
    @МаксПлощадь AS FLOAT
)
RETURNS TABLE
AS
RETURN (
    SELECT
        Название,
        Столица,
        Площадь,
        Население,
        Континент
    FROM Страны
    WHERE Площадь < @МаксПлощадь
)
GO
SELECT * FROM dbo.Задание8(100000)
