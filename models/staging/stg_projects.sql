with project as (
select distinct cast(projectid as int) project_id,
         key as project_key, 
         name as project_name,
          projecttypekey as project_type from {{source('public','mrr_projects')}})

select * 
from project