CREATE TRIGGER Пример3 ON Ученики 
FOR INSERT, UPDATE, DELETE 
AS 
BEGIN 
 	PRINT 'Таблица изменена' END 
