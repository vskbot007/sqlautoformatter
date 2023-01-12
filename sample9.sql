SELECT emp_id, first_name,last_name,dept_id,mgr_id,
         WIDTH_BUCKET(department_id,20,40,10) "Exists in Dept"
FROM emp
    
    WHERE mgr_id < 300
ORDER BY "Exists in Dept";
