CREATE FUNCTION Задание1
(
    @Столица AS VARCHAR(50)
)
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @Страна AS VARCHAR(50)

    SELECT TOP 1 @Страна = Название
    FROM Страны
    WHERE Столица = @Столица

    RETURN @Страна
END
GO

SELECT dbo.Задание1('Вена') AS [Страна со столицей Вена]
