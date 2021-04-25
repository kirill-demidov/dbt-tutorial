with roles as (
    select distinct cast(roleid as int) as role_id
    ,rolename as role_name
from public.mrr_project_roles
) 
select * from roles