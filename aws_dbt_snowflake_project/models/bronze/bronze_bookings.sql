{{ config(
    materialized='incremental',
    alias='bronze_bookings'
) }}

SELECT * FROM {{ source('staging', 'bookings') }}
{% if is_incremental() %}
    WHERE CREATED_AT > (
        SELECT COALESCE(MAX(CREATED_AT), '1900-01-01')
        FROM {{ this }}
    )
{% endif %}