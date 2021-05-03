with issues as (
select
	issue_id  as id,
	issue_link  as link,
	issue_key  as key,
	issue_type as type,
	cast(replace(issue_time_estimated_org , 'None', '0')as int) as original_estimation,
	issue_timespent as timespent ,
	issue_reporter as reporter,
	issue_assignee as assignee,
	issue_creator as creator,
	issue_created_date  as created_date,
	issue_status as status,
	issue_summ as summary,
	project_id,
	issue_priority as priority,
	issue_updated_date as updated_date,
    cast(replace(issue_time_estimate, 'None', '0') as int) as  time_estimate,
	issue_resolution as resolution
	from {{source('public','mrr_issues')}})

select *
from issues