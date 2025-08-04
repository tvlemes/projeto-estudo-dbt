-- models/bronze/brz_fornecedores.sql
{{ config(materialized='table', schema='bronze') }}
select * from {{ ref('fornecedores') }}
