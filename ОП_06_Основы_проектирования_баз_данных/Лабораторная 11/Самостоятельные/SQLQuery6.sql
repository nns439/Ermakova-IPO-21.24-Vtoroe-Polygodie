DECLARE @a INT = RAND() * 1000

IF @a % 11 = 0
    PRINT CAST(@a AS VARCHAR(4)) + ' делится на 11'
ELSE
    PRINT CAST(@a AS VARCHAR(4)) + ' не делится на 11'
