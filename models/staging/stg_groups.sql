select  distinct 
    groupid as  group_id, name as group_name from {{source('public','mrr_groups')}}