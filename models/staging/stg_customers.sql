{{
    config(
        materialized="view"
        , enabled=true
        , tags="hourly"
        , full_refresh=true
        , alias='staging_customer'
    )
}}

select
    id as customer_id,
    first_name,
    last_name

from {{ source('dbt-tutorial__jaffle_shop', 'customers') }}