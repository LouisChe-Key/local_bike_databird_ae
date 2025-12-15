SELECT
    customer_id,
    first_name,
    last_name,
    phone,
    email,
    CONCAT ( street, ", ", CAST(zip_code AS STRING), " ", city, ", ", state ) AS adress
FROM
    {{ source('local_bike', 'customer') }}