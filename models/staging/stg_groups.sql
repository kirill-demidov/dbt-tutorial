with groups as (
select  distinct 
    groupid as  group_id, name as group_name from {{source('public','mrr_groups')}})
select 
group_id,
group_name
from groups