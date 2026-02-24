CREATE FUNCTION Задание6
(
    @Слово AS VARCHAR(50)
)
RETURNS VARCHAR(50)
AS
BEGIN
    IF LEN(@Слово) <= 3
        RETURN @Слово
    RETURN LEFT(@Слово, 2) + 'тест' + RIGHT(@Слово, 1)
END
GO
SELECT
    dbo.Задание6(Столица) AS [Обработанная столица],
    Название,
    Столица,
    Континент
FROM Страны
