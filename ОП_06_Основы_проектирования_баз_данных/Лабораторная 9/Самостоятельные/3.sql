CREATE TABLE Цветы_Ермакова
(
    ID INT PRIMARY KEY,
    Название VARCHAR(50) NOT NULL,
    Класс VARCHAR(30) DEFAULT 'Двудольные',
    CONSTRAINT UQ_Цветы_ID UNIQUE (ID)
);