SELECT 
    single_employee.id,
                    single_employee.first_name,
    single_employee.last_name,
    single_employee.call_duration_avg,
    single_employee.call_duration_avg - avg_all.call_duration_avg AS avg_difference
FROM
(
               SELECT 
        1 AS join_id,
        employee.id,
                        employee.first_name,
        employee.last_name,
        AVG(DATEDIFF("SECOND", call.start_time, call.end_time)) AS call_duration_avg
    FROM call
    INNER JOIN employee ON call.employee_id = employee.id
                GROUP BY
        employee.id,
        
        
        employee.first_name,
        employee.last_name
) single_employee
    
INNER JOIN
    
(
    SELECT
        1 AS join_id
        AVG(DATEDIFF("SECOND", call.start_time, call.end_time)) AS call_duration_avg
    FROM call
) avg_all ON avg_all.join_id = single_employee.join_id;
