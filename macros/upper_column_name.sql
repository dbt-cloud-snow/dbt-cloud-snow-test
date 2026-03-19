{% macro upper_column_name(column_name) %}
    upper({{column_name}})

{% endmacro %}