{{config(materialized='table')}}
SELECT u.ID,u.USER,c.COUNTRY COUNTRYNAME FROM {{source("dbt_assignment_sources","RAW_USERS")}} u 
LEFT JOIN {{source("dbt_assignment_sources","RAW_COUNTRY")}} c 
ON u.COUNTRY=c.COUNTRY_ID