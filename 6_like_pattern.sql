drop table student;
create table student(ID number, Name varchar2(10), Gender varchar2(10), Address varchar2(30));
insert into student values(1, 'asif', 'M', 'dhaka');
insert into student values(2, 'sasib','F', 'ctg');
insert into student(ID,Gender, Name) values(4,'M', 'karim');
insert into student(ID,Gender, Name) values(5,'M', 'jakir');
insert into student values(5, 'rahim','M', 'ctg');
insert into student values(6, 'asha','F', 'sylhet');

-- jader namer sheshe "im" achhe tara ashbe
select * from student where Name LIKE '%im';

-- jader namer majhe "si" achhe tara ashbe
select * from student where Name LIKE '%si%';

-- namer 2nd char "a" jader tara ashbe
select * from student where Name LIKE '_a%';