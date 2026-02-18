SELECT 
    Континент,
    COUNT(*) AS Количество_стран
FROM Страны
WHERE Население > 100000000
GROUP BY Континент
ORDER BY Количество_стран ASC;