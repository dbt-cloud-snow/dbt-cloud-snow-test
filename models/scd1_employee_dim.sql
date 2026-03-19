{{ config(
materialized='incremental',
unique_key='EMPLOYEEID',
incremental_strategy='merge',
on_schema_change='append_new_columns'
)}}

SELECT * FROM {{ source('landing','employees') }}

{% if is_incremental() %}
 where updated_at > (select max(updated_at) from {{this}})
 {% endif %}