with issues as (select
	cast(id as int) id ,
	link ,
	type ,
	cast(project_id as int)project_id ,
	cast(created_date as date)issue_created_date,
	cast(updated_date as date)issue_updated_date,
	priority,
	cast(replace(issue_time_estimate, 'None', '0')as int)issue_time_estimate,
	cast(replace(a.issue_time_estimated_org , 'None', '0')as int)issue_time_estimate_org,
	reporter.display_name as reporter,
	creator.display_name as creator,
	assignee.display_name as assignee,
	a.issue_status,
	a.issue_summ ,
	a.issue_resolution

from
	{{ref('stg_issues')}} a join 	{{ref('stg_users')}} reporter
    on a.reporter = reporter.user_name
				 join 	{{ref('stg_users')}} creator on a.creator = creator.user_name
				 join 	{{ref('stg_users')}} assignee on a.assignee = assignee.user_name)
                 ,
final as (
    select * from issues
)

select * from final