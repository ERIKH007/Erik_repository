{{ config(materialized='table') }}
with shop as (
select * from 
    ({source('customer','orders')})
)
select * from shop


--{{ config(materialized='table') }}
--{{ ref('my_first_dbt_model') }}

