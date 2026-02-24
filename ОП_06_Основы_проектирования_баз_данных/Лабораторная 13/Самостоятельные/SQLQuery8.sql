IF OBJECT_ID('Задание8', 'P') IS NOT NULL
    DROP PROC Задание8
GO

CREATE PROC Задание8
AS
BEGIN
    DECLARE @КоличествоСтрок AS INT

    IF OBJECT_ID('Страны_И', 'U') IS NOT NULL
    BEGIN
        SELECT @КоличествоСтрок = COUNT(*) FROM Страны_И
        DROP TABLE Страны_И
    END
    ELSE
        SET @КоличествоСтрок = 0

    RETURN @КоличествоСтрок
END
GO

DECLARE @Счёт AS INT
EXECUTE @Счёт = Задание8
SELECT @Счёт AS [Количество удалённых строк]
