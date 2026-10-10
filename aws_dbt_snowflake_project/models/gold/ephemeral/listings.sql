{{ config(
    materialized='ephemeral'
) }}

WITH listings AS (
    SELECT 
    LISTING_ID,
    PROPERTY_TYPE,
    CITY,
    COUNTRY,
    LISTING_PRICE_TAG,
    LISTING_CREATED_AT
    FROM
        {{ ref('obt') }}
)
select * from listings