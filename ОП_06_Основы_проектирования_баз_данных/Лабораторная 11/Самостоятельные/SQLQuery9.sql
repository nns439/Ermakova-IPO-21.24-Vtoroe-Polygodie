DECLARE @A INT = 2, @B INT = 5, @sum_squares INT = 0, @current INT

SET @current = @A
WHILE @current <= @B
BEGIN
    SET @sum_squares = @sum_squares + POWER(@current, 2)
    SET @current = @current + 1
END

PRINT 'Сумма квадратов = ' + CAST(@sum_squares AS VARCHAR(10))
