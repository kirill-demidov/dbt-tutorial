with users as (
    select * from {{ref('stg_users')}}
),
final as (
    select * from users
)

select * from final