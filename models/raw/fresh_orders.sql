{{ config (materialized='table')}}

SELECT *
from {{ source('PRICESMART', 'FRESH_ORDERS') }}