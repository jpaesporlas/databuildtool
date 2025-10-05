
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    select
        standard_hash(LOG_ID || '.'|| PROCESS_NAME) as ID,
        SRC_REVIEWS.*,
        sysdate as  dtime_inserted
    from ETL.SRC_REVIEWS
    where 1=1
    and log_notes = 'Process started'

)

select *
from source_data

