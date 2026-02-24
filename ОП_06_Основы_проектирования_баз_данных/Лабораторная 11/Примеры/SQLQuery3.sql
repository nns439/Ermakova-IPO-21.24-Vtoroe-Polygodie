DECLARE @maxp FLOAT, @minp FLOAT, @diff FLOAT 
SELECT  
	 	@maxp = MAX(Баллы),  
 	@minp = MIN(Баллы) FROM  
	 	Ученики  
SET @diff = @maxp - @minp 
PRINT @diff 
