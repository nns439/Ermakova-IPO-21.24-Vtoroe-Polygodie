DECLARE @avg_licey FLOAT, @avg_gimn FLOAT, @diff FLOAT

SET @avg_licey = (
    SELECT AVG(Баллы)
    FROM Ученики
    WHERE Школа = 'Лицей'
)

SET @avg_gimn = (
    SELECT AVG(Баллы)
    FROM Ученики
    WHERE Школа = 'Гимназия'
)

SET @diff = ABS(@avg_licey - @avg_gimn)
PRINT @diff
