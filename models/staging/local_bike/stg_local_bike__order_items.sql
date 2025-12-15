SELECT
    CONCAT(CAST(order_id AS STRING), "-", CAST(item_id AS STRING)) AS order_item_id,
    order_id,
    item_id,
    product_id,
    quantity,
    list_price,
    discount
FROM
    {{ source('local_bike', 'order_items') }}