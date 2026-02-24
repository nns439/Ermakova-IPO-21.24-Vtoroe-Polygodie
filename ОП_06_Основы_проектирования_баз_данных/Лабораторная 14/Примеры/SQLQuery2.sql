CREATE TRIGGER Пример2 ON Ученики 
AFTER DELETE 
AS 
BEGIN 
	 	PRINT 'Запись удалена' 
END 
