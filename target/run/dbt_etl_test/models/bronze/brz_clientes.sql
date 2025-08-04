
  
    

  create  table "dbt_test"."public_bronze"."brz_clientes__dbt_tmp"
  
  
    as
  
  (
    -- models/bronze/brz_clientes.sql

select * from "dbt_test"."public"."clientes"
  );
  