
  
    

  create  table "dbt_test"."public"."fornecedores__dbt_tmp"
  
  
    as
  
  (
    -- models/raw/fornecedores.sql
select * from "dbt_test"."public"."fornecedores"
  );
  