SELECT 
    LEFT(ิศฮ, CHARINDEX(' ', ิศฮ) - 1) + ' ' +
    LEFT(SUBSTRING(ิศฮ, CHARINDEX(' ', ิศฮ) + 1, LEN(ิศฮ)), 1) + '.' +
    LEFT(RIGHT(ิศฮ, LEN(ิศฮ) - LEN(LEFT(ิศฮ, LEN(ิศฮ) - CHARINDEX(' ', REVERSE(ิศฮ))))), 1) + '.' 
    AS ิศฮ_ส๐เ๒๊๎
FROM ภ๊เไๅ์่๊่;