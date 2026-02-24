CREATE TABLE Страны_Ермакова
(
    ID INT PRIMARY KEY IDENTITY(1,1),
    Страна VARCHAR(50) NOT NULL,
    Столица VARCHAR(50) NOT NULL,
    Население_тыс INT CHECK (Население_тыс > 0),
    Площадь_тыс DECIMAL(10,2) CHECK (Площадь_тыс > 0)
);