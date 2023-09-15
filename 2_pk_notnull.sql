drop table employee;
create table employee(ID number primary key, 
Name varchar2(10) not null, Address varchar2(30));

insert into employee values(1, 'asif', 'dhaka');
insert into employee values(2, 'zawad', 'ctg');
-- insert into employee values(2, 'zaad', 'ctggg'); wrong, cz 2 is a primary key which is already used

-- but already used not null things is right
insert into employee values(3, 'zawad', 'ctg');

-- insert into employee(ID, Address) values(3 ,'ctg'); wrong, cz name can't be null
select * from employee;
