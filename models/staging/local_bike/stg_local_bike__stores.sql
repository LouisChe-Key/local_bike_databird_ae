{{
  config(
    materialized = "table"
  )
}}


SELECT
    store_id,
    store_name,
    phone,
    email,
    CONCAT ( street, ", ", CAST(zip_code AS STRING), " ", city, ", ", state ) AS adress
FROM
    {{ source('local_bike', 'stores') }}