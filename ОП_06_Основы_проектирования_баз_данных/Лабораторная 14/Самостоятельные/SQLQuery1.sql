CREATE TRIGGER Задание1 ON Ученики
FOR UPDATE
AS
BEGIN
    PRINT 'Запись изменена'
END
GO
