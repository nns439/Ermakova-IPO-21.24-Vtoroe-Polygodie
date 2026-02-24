CREATE FUNCTION Задание10()
RETURNS @Конт_Нас TABLE
(
    Континент VARCHAR(50),
    Суммарное_население BIGINT
)
AS
BEGIN
    INSERT @Конт_Нас
    SELECT
        Континент,
        SUM(Население) AS Суммарное_население
    FROM Страны
    GROUP BY Континент
    RETURN
END
GO
SELECT * FROM dbo.Задание10() ORDER BY Суммарное_население DESC
