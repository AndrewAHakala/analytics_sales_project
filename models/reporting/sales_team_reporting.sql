{{
    config(
        materialized='table',
        schema='sales_reporting',
        tags=['reporting']
    )
}}

WITH base_data AS (
    SELECT
        *
    FROM {{ ref('dbt_demo','monthly_gross_revenue') }}
)

SELECT
    *
FROM base_data