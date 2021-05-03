with roles as (
    select *,{{ dbt_utils.current_timestamp() }} as created_at from {{ref('stg_roles')}}
),

final as (
    select * from roles
    )

select * 
from final

