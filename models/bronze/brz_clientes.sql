-- models/bronze/brz_clientes.sql
{{ config(materialized='table', schema='bronze') }}
select * from {{ ref('clientes') }}
