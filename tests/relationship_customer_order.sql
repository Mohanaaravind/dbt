select 
    distinct customer_id
from 
    {{ ref('stg_jaffle_shop_orders') }}
where
    customer_id not in
    (
        select 
        distinct customer_id
    from 
        {{ ref('stg_jaffle_shop_customer') }}
    )