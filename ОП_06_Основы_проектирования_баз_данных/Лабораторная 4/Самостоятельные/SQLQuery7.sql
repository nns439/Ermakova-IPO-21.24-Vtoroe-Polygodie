DECLARE @age INT = 20;
DECLARE @surname NVARCHAR(100) = 'Ермакова';

SELECT REPLICATE(@surname + ' ', @age) AS Результат;