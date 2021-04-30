with roles as (
    select * from {{ref('stg_roles')}}
),

final as (
    select * from roles
    )

select * 
from final

