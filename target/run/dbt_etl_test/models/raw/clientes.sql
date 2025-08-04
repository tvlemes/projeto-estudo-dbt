
  
    

  create  table "dbt_test"."public"."clientes__dbt_tmp"
  
  
    as
  
  (
    -- models/raw/clientes.sql
select * from "dbt_test"."public"."clientes"
  );
  