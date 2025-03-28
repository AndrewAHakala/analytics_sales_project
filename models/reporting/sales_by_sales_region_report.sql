{{
    config(
        materialized='table',
        schema='sales_reporting',
        tags=['reporting']
    )
}}



SELECT
    *
FROM {{ ref('sales_team_reporting') }}