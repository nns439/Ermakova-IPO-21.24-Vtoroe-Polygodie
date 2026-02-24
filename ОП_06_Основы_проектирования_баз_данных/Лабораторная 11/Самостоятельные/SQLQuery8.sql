DECLARE @a INT = RAND() * 100 + 1, @b INT = RAND() * 100 + 1
DECLARE @x INT, @y INT, @gcd INT, @lcm INT

SET @x = @a
SET @y = @b

WHILE @x != @y
BEGIN
    IF @x > @y
        SET @x = @x - @y
    ELSE
        SET @y = @y - @x
END

SET @gcd = @x
SET @lcm = (@a * @b) / @gcd

PRINT 'НОК(' + CAST(@a AS VARCHAR(4)) + ', ' + CAST(@b AS VARCHAR(4)) + ') = ' + CAST(@lcm AS VARCHAR(6))
