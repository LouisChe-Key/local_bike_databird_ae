{{
  config(
    materialized = "table"
  )
}}


SELECT
    CONCAT(CAST(store_id AS STRING), "-", CAST(product_id AS STRING)) AS stocks_id,
    store_id,
    product_id,
    quantity
FROM
    {{ source('local_bike', 'stocks') }}