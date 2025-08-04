
  
    

  create  table "dbt_test"."public_bronze"."brz_vendas__dbt_tmp"
  
  
    as
  
  (
    -- models/bronze/brz_vendas.sql

select * from "dbt_test"."public"."vendas"
  );
  