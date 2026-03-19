SELECT 
CUSTOMERID, 
FIRSTNAME, 
{{ upper_column_name('LASTNAME')}} as LASTNAME, 
EMAIL, 
PHONE, 
ADDRESS, 
CITY, 
STATE, 
ZIPCODE, 
UPDATED_AT,
concat(FIRSTNAME,' ',LASTNAME) as CUSTOMER_NAME 
FROM 
{{source('landing','customers')}}
