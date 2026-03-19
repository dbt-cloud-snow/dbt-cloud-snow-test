{% test string_not_null_check(model,column_name)%}
    
    select * from {{model}}
    where {{column_name}} is null or 
    trim({{column_name}}) = ''

{% endtest %}