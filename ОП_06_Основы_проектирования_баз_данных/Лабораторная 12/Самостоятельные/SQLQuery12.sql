CREATE FUNCTION Quarter
(
    @x AS FLOAT,
    @y AS FLOAT
)
RETURNS INT
AS
BEGIN
    DECLARE @Result AS INT

    IF @x > 0 AND @y > 0
        SET @Result = 1
    ELSE IF @x < 0 AND @y > 0
        SET @Result = 2
    ELSE IF @x < 0 AND @y < 0
        SET @Result = 3
    ELSE IF @x > 0 AND @y < 0
        SET @Result = 4
    ELSE
        SET @Result = NULL

    RETURN @Result
END
GO

SELECT dbo.Quarter(1.0, 1.0) AS [Четверть (1,1)] -- 1
SELECT dbo.Quarter(-1.0, 1.0) AS [Четверть (-1,1)] -- 2
SELECT dbo.Quarter(-1.0, -1.0) AS [Четверть (-1,-1)] -- 3
SELECT dbo.Quarter(1.0, -1.0) AS [Четверть (1,-1)] -- 4
SELECT dbo.Quarter(0.0, 1.0) AS [Четверть (0,1)] -- NULL
