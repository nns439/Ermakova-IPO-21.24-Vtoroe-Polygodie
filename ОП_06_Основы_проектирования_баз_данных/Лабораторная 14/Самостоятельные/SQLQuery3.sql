CREATE TRIGGER Задание3 ON Ученики
FOR INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Сообщение VARCHAR(200)
    SET @Сообщение = SYSTEM_USER + ' изменил таблицу. Время: ' + CONVERT(VARCHAR, GETDATE(), 120)
    PRINT @Сообщение
END
GO
