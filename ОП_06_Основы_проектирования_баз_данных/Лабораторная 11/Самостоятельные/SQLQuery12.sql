DECLARE @word NVARCHAR(20) = 'Нижневартовск', @len INT, @i INT

SET @len = LEN(@word)
SET @i = 1

WHILE @i <= @len
BEGIN
    PRINT LEFT(@word, @i) + RIGHT(REVERSE(@word), @i)
    SET @i = @i + 1
END
