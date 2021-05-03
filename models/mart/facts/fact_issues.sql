select
	cast(id as int) id ,
	link ,
	type ,
	cast(project_id as int)project_id ,
	cast(created_date as date)issue_created_date,
	cast(a.updated_date as timestamp) updated_date,
	priority,
    time_estimate,
	original_estimation,
	reporter,
	creator,
	assignee,
	a.status,
	a.summary ,
	a.resolution

from
	{{ref('stg_issues')}} a
{% if is_incremental() %}
	
 where cast(a.updated_date as timestamp) > (select max(updated_date) from {{ this }}) 

 {% endif %}
