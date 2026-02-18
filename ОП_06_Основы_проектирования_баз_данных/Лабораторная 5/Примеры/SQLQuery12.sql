SELECT 
    Континент
FROM Страны
GROUP BY Континент
HAVING 
    1.0 * MAX(Население) / MIN(Население) <= 1000;