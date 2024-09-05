{{ config(materialized='table') }}

with customer as (
    select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER
    where c_custkey <= 100
)
select * from customer