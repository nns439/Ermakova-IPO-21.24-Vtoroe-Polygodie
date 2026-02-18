SELECT
    Название,
    Население
FROM Страны
WHERE
    Население <= (
        SELECT Население
        FROM Страны
        WHERE Название = 'Фиджи'
    )
ORDER BY Население DESC;