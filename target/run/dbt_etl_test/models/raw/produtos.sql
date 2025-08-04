
  
    

  create  table "dbt_test"."public"."produtos__dbt_tmp"
  
  
    as
  
  (
    -- models/raw/produtos.sql
select * from "dbt_test"."public"."produtos"
  );
  