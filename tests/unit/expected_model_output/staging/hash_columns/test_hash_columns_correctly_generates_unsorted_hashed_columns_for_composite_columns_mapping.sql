CAST(MD5_BINARY(UPPER(TRIM(CAST(BOOKING_REF AS VARCHAR)))) AS BINARY(16)) AS BOOKING_PK,
CAST(MD5_BINARY(CONCAT(
    IFNULL(UPPER(TRIM(CAST(ADDRESS AS VARCHAR))), '^^'), '||',
    IFNULL(UPPER(TRIM(CAST(PHONE AS VARCHAR))), '^^'), '||',
    IFNULL(UPPER(TRIM(CAST(NAME AS VARCHAR))), '^^') ))
AS BINARY(16)) AS CUSTOMER_DETAILS