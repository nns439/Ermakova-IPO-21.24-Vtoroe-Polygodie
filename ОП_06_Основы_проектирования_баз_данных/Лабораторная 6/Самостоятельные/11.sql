SELECT
    С.Фамилия,
    COUNT(Э.Дата) AS Количество_экзаменов
FROM Экзамен Э
INNER JOIN Сотрудник С ON Э.Таб_номер = С.Таб_номер
GROUP BY С.Фамилия
HAVING COUNT(Э.Дата) > 3;