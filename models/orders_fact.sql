{{ config(materialized='table') }}

select 
O.ORDERID,
O.CUSTOMERID,
O.EMPLOYEEID,
COUNT(O.ORDERID) AS ORDER_COUNT,
SUM(SALES_PRICE) AS SALES_PRICE
from {{ ref('orders_stg') }} o
join
{{ ref('orderitems_stg')}} oi
on(o.orderid = oi.orderid)
group by 1,2,3