SELECT  
	 	   Название 
      ,Столица 
      ,Площадь 
      ,Население 
      ,Континент 
	 	  ,ROUND(CAST(Население AS FLOAT) * 100 /  
	 	  ( 
	 	 	SELECT  
	 	 	 	SUM(Население)  
	 	 	FROM 
	 	 	 	Страны Б 
	 	 	WHERE 
	 	 	 	А.Континент = Б.Континент 
	 	  ), 3) AS Процент 
FROM  
	 	Страны А 
ORDER BY 
	 	Процент DESC 
