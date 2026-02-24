CREATE TRIGGER Пример4 ON Ученики 
INSTEAD OF DELETE 
AS 
BEGIN 
	 	PRINT 'Нельзя удалить данные' 
END 
