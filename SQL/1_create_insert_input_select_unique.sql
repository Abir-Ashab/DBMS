drop table student;
create table student(ID number unique, Name varchar2(10), Address varchar2(30));
insert into student values(1, 'asif', 'dhaka');
insert into student values(2, 'zawad', 'ctg');
-- insert into student values(2, 'zaad', 'ctg'); eta dile error dekhabe karon id unique

-- to input values from the prompt
insert into student values(&ID, '&Name', '&Address');

-- insert into student values(4, 'karim',); it will produce error
insert into student(ID, Name) values(4, 'karim');

-- select is for showing all the things into the oracle prompt
SELECT * from student;