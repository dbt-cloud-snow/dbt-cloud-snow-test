select
    customerid,
    firstname,
    {{ upper_column_name("LASTNAME") }} as lastname,
    email,
    phone,
    address,
    city,
    state,
    zipcode,
    updated_at,
    concat(firstname, ' ', lastname) as customer_name
from {{ source("landing", "customers") }}
