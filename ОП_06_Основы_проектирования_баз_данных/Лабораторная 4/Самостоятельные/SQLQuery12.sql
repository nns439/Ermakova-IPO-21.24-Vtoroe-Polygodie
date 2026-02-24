SELECT DISTINCT
    Специализация,
    CASE 
        WHEN LEN(Специализация) > 10 THEN 'Длинный'
        ELSE 'Короткий'
    END AS Тип
FROM Академики;