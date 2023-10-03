-- group by(distinct id gulo print korbe)
select salary, count(salary) from employees group by salary;

-- having
select last_name, count(salary) from employees group by last_name having sum(salary) > 2000;