select 
customerid,
count(orderid) as order_account
from {{ ref('orders_stg') }}
group by 1