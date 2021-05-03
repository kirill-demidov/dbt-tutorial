select 
	id,
	issue_id ,
	project_id,
	update_date ,
	time_spent_sec,
	updater_name,
	active_sprint_id,
	active_sprint_name

    from {{ref('stg_worklog')}}

    {% if is_incremental() %}
    	
 where update_date > (select max(update_date) from {{ this }}) 

 {% endif %}