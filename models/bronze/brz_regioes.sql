-- models/bronze/brz_regioes.sql
{{ config(materialized='table', schema='bronze') }}
select * from {{ ref('regioes') }}
