
  
    

  create  table "dbt_test"."public"."vendas__dbt_tmp"
  
  
    as
  
  (
    -- models/raw/vendas.sql
select * from "dbt_test"."public"."vendas"
  );
  