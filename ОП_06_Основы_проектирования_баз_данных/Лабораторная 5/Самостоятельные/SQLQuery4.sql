SELECT COUNT(*) AS Количество
FROM Страны
WHERE Название LIKE '%ан'
  AND Название NOT LIKE '%стан';