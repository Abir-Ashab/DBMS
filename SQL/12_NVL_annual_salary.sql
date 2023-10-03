-- The full form of NVL in Oracle SQL is "Null Value Locator."

select last_name,salary,12*salary*commission_pct "Anual Salary" from employees;
select last_name,salary,NVL(12*(salary+salary*commission_pct),12*salary) "Anual Salary" from employees;
select last_name || ' is a ' || job_id AS "Employee Details" from employees;
select last_name || ' anual salary is ' || NVL(12*(salary+salary*commission_pct),12*salary) "Anual Salary" from employees;