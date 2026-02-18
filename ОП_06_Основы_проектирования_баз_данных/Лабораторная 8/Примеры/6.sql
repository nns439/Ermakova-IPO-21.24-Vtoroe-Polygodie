SELECT 
	 	Название 
    ,Столица 
    ,Площадь 
    ,Население 
    ,Континент 
FROM  
 	Страны  WHERE 
	 	Континент IN ( 
	 	 	SELECT 
 	 	 	Континент  	 	FROM  
	 	 	 	Страны  
	 	 	GROUP BY 
 	 	 	Континент  	 	HAVING 
	 	 	 	AVG(Население) > ( 
	 	 	 	 	SELECT  
	 	 	 	 	 	AVG(Население)  
	 	 	 	 	FROM 
	 	 	 	 	 	Страны  
	 	 	 	 	) 
	 	) 	 	 	 	 	
