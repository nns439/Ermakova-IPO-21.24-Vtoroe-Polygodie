CREATE TABLE Ученики 
( 
 	ID 	 	INT PRIMARY KEY IDENTITY(1,1), 
 	Фамилия 	VARCHAR(50) NOT NULL, 
 	Предмет 	VARCHAR(50) NOT NULL, 
 	Школа 	VARCHAR(50) NOT NULL, 
 	Баллы  	FLOAT CHECK ((Баллы >= 0) AND (Баллы <= 100)) NULL 
) 
