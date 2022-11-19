{{
    config(
        materialized="view"
        , tags="hourly"
        , full_refresh=true
    )
}}

select
    id as customer_id,
    first_name,
    last_name

from {{ source('dbt-tutorial__jaffle_shop', 'customers') }}