-- models/bronze/brz_produtos.sql
{{ config(materialized='table', schema='bronze') }}
select * from {{ ref('produtos') }}
