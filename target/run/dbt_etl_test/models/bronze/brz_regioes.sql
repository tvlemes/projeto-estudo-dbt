
  
    

  create  table "dbt_test"."public_bronze"."brz_regioes__dbt_tmp"
  
  
    as
  
  (
    -- models/bronze/brz_regioes.sql

select * from "dbt_test"."public"."regioes"
  );
  