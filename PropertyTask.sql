SELECT 'public ' + DATA_TYPE + ' ' + COLUMN_NAME + ' { get; set; }',
CASE
WHEN DATA_TYPE = 'nvarchar' and 
IS_NULLABLE = 'NO' 
THEN 'public string ' + COLUMN_NAME + ' { get; set; } = null!'
WHEN DATA_TYPE = 'nvarchar' and 
IS_NULLABLE = 'YES' 
THEN 'public string? ' + COLUMN_NAME + ' { get; set; }'

WHEN DATA_TYPE = 'int' or DATA_TYPE = 'smallint' and 
IS_NULLABLE = 'NO' 
THEN 'public int ' + COLUMN_NAME + ' { get; set; } = null!'
WHEN DATA_TYPE = 'int' or DATA_TYPE = 'smallint' and 
IS_NULLABLE = 'YES' 
THEN 'public int? ' + COLUMN_NAME + ' { get; set; }'

WHEN DATA_TYPE = 'bit' and 
IS_NULLABLE = 'NO' 
THEN 'public byte ' + COLUMN_NAME + ' { get; set; } = null!'
WHEN DATA_TYPE = 'bit' and 
IS_NULLABLE = 'YES' 
THEN 'public byte? ' + COLUMN_NAME + ' { get; set; }'

WHEN DATA_TYPE = 'money' and 
IS_NULLABLE = 'NO' 
THEN 'public decimal ' + COLUMN_NAME + ' { get; set; } = null!'
WHEN DATA_TYPE = 'money' and 
IS_NULLABLE = 'YES' 
THEN 'public decimal? ' + COLUMN_NAME + ' { get; set; }'

END 'Correct'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = N'Products' and
TABLE_SCHEMA = 'dbo'