with issues as (
select
	issue_id  as id,
	issue_link  as link,
	issue_key  as key,
	issue_type as type,
	issue_time_estimated_org as original_estimation,
	issue_timespent as timespent ,
	issue_reporter as reporter,
	issue_assignee as assignee,
	issue_creator as creator,
	issue_created_date  as created_date,
	issue_status as status,
	issue_summ as summary,
	project_id,
	issue_priority as priority
from
	{{source('public','mrr_issues')}})

select *
from issues