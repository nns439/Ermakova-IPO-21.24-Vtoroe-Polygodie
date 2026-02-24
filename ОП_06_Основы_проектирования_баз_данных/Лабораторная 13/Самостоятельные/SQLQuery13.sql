CREATE PROC SortInc
    @A AS FLOAT OUTPUT,
    @B AS FLOAT OUTPUT,
    @C AS FLOAT OUTPUT
AS
BEGIN
    DECLARE @Min AS FLOAT, @Mid AS FLOAT, @Max AS FLOAT

    -- Находим минимальное значение
    SET @Min = CASE
        WHEN @A <= @B AND @A <= @C THEN @A
        WHEN @B <= @A AND @B <= @C THEN @B
        ELSE @C
    END

    -- Находим максимальное значение
    SET @Max = CASE
        WHEN @A >= @B AND @A >= @C THEN @A
        WHEN @B >= @A AND @B >= @C THEN @B
        ELSE @C
    END

    -- Среднее значение — оставшееся
    SET @Mid = @A + @B + @C - @Min - @Max

    SET @A = @Min
    SET @B = @Mid
    SET @C = @Max
END
GO

DECLARE @X AS FLOAT = 7.2
DECLARE @Y AS FLOAT = 1.5
DECLARE @Z AS FLOAT = 4.8
EXECUTE SortInc @X OUTPUT, @Y OUTPUT, @Z OUTPUT
SELECT @X AS A, @Y AS B, @Z AS C
