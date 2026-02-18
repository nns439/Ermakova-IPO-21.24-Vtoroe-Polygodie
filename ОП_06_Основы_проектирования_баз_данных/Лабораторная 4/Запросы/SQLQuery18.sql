 SELECT  
	 	ФИО 
 	, CASE MONTH(Дата_рождения)  	 	WHEN 3 THEN 'Весна' 
	 	 	WHEN 4 THEN 'Весна' 
	 	 	WHEN 5 THEN 'Весна' 
	 	 	WHEN 6 THEN 'Лето' 
	 	 	WHEN 7 THEN 'Лето' 
	 	 	WHEN 8 THEN 'Лето' 
	 	 	WHEN 9 THEN 'Осень' 
	 	 	WHEN 10 THEN 'Осень' 
	 	 	WHEN 11 THEN 'Осень' 
	 	 	ELSE 'Зима' 
	 	 	END AS Времени_года 
FROM Академики 