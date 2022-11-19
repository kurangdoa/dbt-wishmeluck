{{
    config(
        materialized="view",
        tag="hourly"
        full_refresh=False
    )
}}

select
    id as customer_id,
    first_name,
    last_name

from {{ source('dbt-tutorial__jaffle_shop', 'customers') }}