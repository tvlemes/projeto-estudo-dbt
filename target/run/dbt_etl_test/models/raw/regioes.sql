
  
    

  create  table "dbt_test"."public"."regioes__dbt_tmp"
  
  
    as
  
  (
    -- models/raw/regioes.sql
select * from "dbt_test"."public"."regioes"
  );
  