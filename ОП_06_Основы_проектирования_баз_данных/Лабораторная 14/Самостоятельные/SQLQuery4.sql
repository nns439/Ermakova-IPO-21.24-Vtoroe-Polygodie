CREATE TRIGGER Задание4 ON Ученики
INSTEAD OF UPDATE
AS
BEGIN
    PRINT 'Нельзя редактировать данные'
END
GO
