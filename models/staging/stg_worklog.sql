select distinct
	a.worklog_id as id,
	a.issue_id ,
	b.project_id,
	cast(update_date as timestamp)as update_date ,
	a.time_spent_sec,
	c.display_name as updater_name,
	a.active_sprint_id,
	a.active_sprint_name
from
	{{source('public','mrr_worklog')}} a
	join {{source('public','mrr_issues')}} b on
	cast(a.issue_id as int) = cast(b.issue_id as int)
	left join {{source('public', 'mrr_users')}} c on a.updater_id=c.userid