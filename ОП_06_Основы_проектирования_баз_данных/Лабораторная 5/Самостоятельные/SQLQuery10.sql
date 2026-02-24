SELECT 
    Континент
FROM Страны
GROUP BY Континент
HAVING 
    1.0 * MAX(Площадь) / MIN(Площадь) <= 10000;