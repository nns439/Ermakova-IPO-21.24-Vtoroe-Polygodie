SELECT 
    ФИО,
    RIGHT(LTRIM(RTRIM(Специализация)), 2) AS Последние_буквы
FROM Академики;