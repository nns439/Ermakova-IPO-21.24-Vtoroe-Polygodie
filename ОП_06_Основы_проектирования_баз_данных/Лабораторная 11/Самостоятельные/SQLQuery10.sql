DECLARE @num INT = 1

WHILE NOT (
    @num % 2 = 1 AND
    @num % 3 = 1 AND
    @num % 4 = 1 AND
    @num % 5 = 1 AND
    @num % 6 = 1 AND
    @num % 7 = 0
)
BEGIN
    SET @num = @num + 1
END

PRINT 'Искомое число: ' + CAST(@num AS VARCHAR(10))
