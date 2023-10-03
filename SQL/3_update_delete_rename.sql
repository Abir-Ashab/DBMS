drop table student;
create table student(ID number, Name varchar2(10), Address varchar2(30));
insert into student values(1, 'asif', 'dhaka');
insert into student values(2, 'zawad', 'ctg');
insert into student(ID, Name) values(4, 'karim');


-- update command with condition
update student set Address = 'cumilla', name = 'ashab' where id = 4 and name = 'karim';
SELECT * from student;

-- update command without condition
update student set Address = 'cumilla';
SELECT * from student;

-- delate command with condition
delete student where ID = 4;
SELECT * from student;

-- delete command, without any condition
delete student;
SELECT * from student;

insert into student values(4, 'rahim', 'ctg');
-- renaming
drop table students;
rename student to students;
SELECT * from students;