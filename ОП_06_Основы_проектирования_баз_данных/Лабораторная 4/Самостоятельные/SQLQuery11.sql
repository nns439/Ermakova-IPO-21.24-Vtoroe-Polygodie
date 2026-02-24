SELECT 
    ФИО,
    CASE 
        WHEN (YEAR(Дата_рождения) % 400 = 0) OR (YEAR(Дата_рождения) % 4 = 0 AND YEAR(Дата_рождения) % 100 <> 0)
        THEN 'Високосный'
        ELSE 'Не високосный'
    END AS Год
FROM Академики;