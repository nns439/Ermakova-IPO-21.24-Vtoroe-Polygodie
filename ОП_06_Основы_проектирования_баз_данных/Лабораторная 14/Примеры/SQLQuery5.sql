CREATE TABLE Ученики_Архив (
    ID INT NOT NULL,
    Фамилия VARCHAR(50) NULL,
    Предмет VARCHAR(50) NULL,
    Школа VARCHAR(50) NULL,
    Баллы FLOAT NULL,
    Удалено DATETIME NOT NULL
);
GO

CREATE TRIGGER Пример5 ON Ученики
FOR DELETE
AS
BEGIN
    INSERT INTO Ученики_Архив (ID, Фамилия, Предмет, Школа, Баллы, Удалено)
    SELECT
        ID,
        Фамилия,
        Предмет,
        Школа,
        Баллы,
        GETDATE() AS Удалено
    FROM DELETED;
END;
