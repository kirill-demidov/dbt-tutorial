with project as (
   select *,{{ dbt_utils.current_timestamp() }} as created_at from {{ref('stg_projects')}}
), 
final as (
    select * from project
)

select * from final