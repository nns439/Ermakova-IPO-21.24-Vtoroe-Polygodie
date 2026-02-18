SELECT DISTINCT
    С.Фамилия
FROM Студент С
INNER JOIN Экзамен Э ON С.Рег_номер = Э.Рег_номер
WHERE Э.Аудитория = '101';