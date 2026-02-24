CREATE FUNCTION IsPrime
(
    @N AS INT
)
RETURNS BIT
AS
BEGIN
    DECLARE @Result AS BIT

    IF @N <= 1
        SET @Result = 0
    ELSE IF @N = 2
        SET @Result = 1
    ELSE IF @N % 2 = 0
        SET @Result = 0
    ELSE
    BEGIN

        DECLARE @I AS INT = 3
        SET @Result = 1  

        WHILE @I * @I <= @N
        BEGIN
            IF @N % @I = 0
            BEGIN
                SET @Result = 0 
                BREAK  
            END
            SET @I = @I + 2
        END
    END

    RETURN @Result
END
GO

SELECT dbo.IsPrime(17) AS [17 — простое?] -- 1
SELECT dbo.IsPrime(25) AS [25 — простое?] -- 0
SELECT dbo.IsPrime(97) AS [97 — простое?] -- 1
SELECT dbo.IsPrime(2) AS [2 — простое?] -- 1
SELECT dbo.IsPrime(1) AS [1 — простое?] -- 0
