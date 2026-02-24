DECLARE @count INT

SELECT @count = COUNT(*)
FROM Ученики

IF @count % 2 = 0
    PRINT 'Количество строк чётное'
ELSE
    PRINT 'Количество строк нечётное'
