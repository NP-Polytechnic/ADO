-- models/incremental_orders.sql

{{ config(materialized='incremental', unique_key='ORDERID') }}

SELECT *
FROM FRESH_ORDERS
WHERE CAST(ORDERID AS BIGINT) > (SELECT MAX(CAST(ORDERID AS BIGINT)) FROM ORDERS)