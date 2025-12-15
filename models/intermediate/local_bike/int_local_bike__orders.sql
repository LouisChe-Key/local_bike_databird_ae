SELECT
    oi.product_id,
    oi.quantity,
    oi.list_price AS price,
    oi.discount,
    o.order_date,
    o.staff_id,
    o.store_id
FROM
    {{ ref('stg_local_bike__order_items') }} AS oi
LEFT JOIN
    {{ ref('stg_local_bike__orders') }} AS o
    ON
        o.order_id = oi.order_id