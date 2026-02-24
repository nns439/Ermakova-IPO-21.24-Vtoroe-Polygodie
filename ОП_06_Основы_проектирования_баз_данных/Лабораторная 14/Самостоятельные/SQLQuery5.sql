-- Создаём таблицу для архива
CREATE TABLE Ученики_Иванов (
    Фамилия VARCHAR(50) NOT NULL,
    Удалено DATETIME NOT NULL
)
GO

-- Создаём триггер
CREATE TRIGGER Задание5 ON Ученики
FOR DELETE
AS
BEGIN
    INSERT INTO Ученики_Иванов (Фамилия, Удалено)
    SELECT
        d.Фамилия,
        GETDATE() AS Удалено
    FROM
        DELETED d
    WHERE
        EXISTS (
            SELECT 1
            FROM Ученики u
            WHERE u.Фамилия = d.Фамилия
        )
END
GO
