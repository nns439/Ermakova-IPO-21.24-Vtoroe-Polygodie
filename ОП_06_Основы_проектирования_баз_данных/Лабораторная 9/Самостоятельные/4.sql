CREATE TABLE Животные_Ермакова
(
    ID INT PRIMARY KEY,
    Название VARCHAR(50) NOT NULL,
    Отряд VARCHAR(30) DEFAULT 'Хищные',
    CONSTRAINT UQ_Животные_ID UNIQUE (ID)
);