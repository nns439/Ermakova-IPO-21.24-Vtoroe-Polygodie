CREATE FUNCTION Задание9
(
    @МинНаселение AS INT,
    @МаксНаселение AS INT
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
    WHERE Население BETWEEN @МинНаселение AND @МаксНаселение
)
GO
SELECT * FROM dbo.Задание9(10000000, 50000000)
