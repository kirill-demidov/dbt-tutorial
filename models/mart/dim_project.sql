with project as (
   select * from {{ref('stg_projects')}}
), 
final as (
    select * from project
)

select * from final