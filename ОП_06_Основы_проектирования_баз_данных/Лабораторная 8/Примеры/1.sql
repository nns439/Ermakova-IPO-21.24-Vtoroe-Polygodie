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
	 	 	 	Страны 
	 	  ), 3) AS Процент 
FROM  
	 	Страны 
ORDER BY 
	 	Процент DESC 
