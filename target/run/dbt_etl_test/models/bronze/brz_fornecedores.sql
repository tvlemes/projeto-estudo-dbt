
  
    

  create  table "dbt_test"."public_bronze"."brz_fornecedores__dbt_tmp"
  
  
    as
  
  (
    -- models/bronze/brz_fornecedores.sql

select * from "dbt_test"."public"."fornecedores"
  );
  