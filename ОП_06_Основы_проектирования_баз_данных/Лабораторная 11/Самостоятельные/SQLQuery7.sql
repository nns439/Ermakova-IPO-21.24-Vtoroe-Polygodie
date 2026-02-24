DECLARE @N INT = RAND() * 1000, @temp INT

SET @temp = @N
WHILE @temp % 3 = 0 AND @temp > 1
    SET @temp = @temp / 3

IF @temp = 1
    PRINT 'Да'
ELSE
    PRINT 'Нет'
