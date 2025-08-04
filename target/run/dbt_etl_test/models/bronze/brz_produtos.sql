
  
    

  create  table "dbt_test"."public_bronze"."brz_produtos__dbt_tmp"
  
  
    as
  
  (
    -- models/bronze/brz_produtos.sql

select * from "dbt_test"."public"."produtos"
  );
  