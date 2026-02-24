DECLARE @num INT = 1234, @sum INT = 0

SET @sum = (@num / 1000) + ((@num % 1000) / 100) + ((@num % 100) / 10) + (@num % 10)
PRINT @sum
