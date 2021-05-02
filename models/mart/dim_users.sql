with users as (
    select *,{{ dbt_utils.current_timestamp() }} as created_at from {{ref('stg_users')}}
),
final as (
    select * from users
)

select * from final