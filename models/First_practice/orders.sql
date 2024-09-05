{{ config(materialized='table') }}
with orders as (
select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS o
where exists (
select * FROM DBT_COURSE.DBT_EHDZ.CUSTOMER c
where c.c_custkey = o.o_custkey)
)
select * from orders