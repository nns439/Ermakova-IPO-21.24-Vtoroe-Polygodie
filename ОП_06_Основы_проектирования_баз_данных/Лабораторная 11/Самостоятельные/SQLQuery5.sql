DECLARE @a INT = RAND() * 100, @b INT = RAND() * 100, @c INT = RAND() * 100
DECLARE @min INT

SET @min = @a
IF @b < @min SET @min = @b
IF @c < @min SET @min = @c

PRINT 'Наименьшее число: ' + CAST(@min AS VARCHAR(3))
