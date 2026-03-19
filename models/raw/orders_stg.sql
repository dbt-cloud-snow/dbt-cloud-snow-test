SELECT
 ORDERID, 
 ORDERDATE, 
 CUSTOMERID, 
 EMPLOYEEID, 
 STOREID, 
 STATUS,
 case 
    when  STATUS = '01' then 'InProgrss'
    when  STATUS = '02' then 'Completed'
    when  STATUS = '03' then 'Cancelled'
end as StatusCD,
 UPDATED_AT
 FROM
 {{source('landing','orders')}}