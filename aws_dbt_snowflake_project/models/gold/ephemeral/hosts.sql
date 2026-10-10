{{ config(
    materialized='ephemeral'
) }}

WITH hosts AS (
    SELECT 
    HOST_ID,
    HOST_NAME,
    HOST_SINCE,
    IS_SUPERHOST,
    HOST_RESPONSE_TAG,
    HOST_TENURE,
    HOST_CREATED_AT
    FROM
        {{ ref('obt') }}
)
select * from hosts