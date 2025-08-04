-- models/bronze/brz_vendas.sql
{{ config(materialized='table', schema='bronze') }}
select * from {{ ref('vendas') }}