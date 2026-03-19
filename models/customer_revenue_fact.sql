{{ config(
    materialized= 'table',
    transient= false
)

}}

select
cs.customerid,
cs.customer_name,
sum(of1.SALES_PRICE) as customer_revenue
from 
{{ ref('customer_stg') }} cs
join 
{{ ref('orders_fact') }} of1
on (cs.customerid = of1.customerid)
group by 1,2