select department.department_id as c0 from department as department, salary as salary where salary.department_id = department.department_id and (department.department_id = 14) group by department.department_id order by department.department_id ASC NULLS LAST;