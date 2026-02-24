CREATE TRIGGER Задание2 ON Ученики
FOR INSERT, DELETE
AS
BEGIN
    PRINT 'Количество строк изменено'
END
GO
