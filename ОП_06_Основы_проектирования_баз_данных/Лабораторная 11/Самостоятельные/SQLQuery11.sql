DECLARE @surname NVARCHAR(50) = 'Иванов', @length INT, @counter INT

SET @length = LEN(@surname)
SET @counter = @length

WHILE @counter > 0
BEGIN
    PRINT @surname
    SET @counter = @counter - 1
END
