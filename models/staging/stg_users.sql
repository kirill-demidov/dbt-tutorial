with users as (
select 
accounttype as account_type,
case when status = 'True' then 'Active' else 'Inactive' end as user_status,
display_name as user_name,
userid  as user_id
from {{source('public','mrr_users')}} mu 
where accounttype = 'atlassian')

select * from users