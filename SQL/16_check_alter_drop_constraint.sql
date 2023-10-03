drop table checker;
create table checker(name varchar2(20), salary number(5) constraint check_salary check(salary between 10000 and 70000));
insert into checker values('abir', 10002);
insert into checker values('ashab', 22002);
-- the salary of below's person is getter than 70000 so it won't count as right salary
-- it will show an error
insert into checker values('Niloy', 70002);
alter table checker drop constraint check_salary;
insert into checker values('Niloy', 70002);
-- the above insertion is right