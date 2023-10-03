drop table student_type_1;
create table student_type_1(ID number, Name varchar2(10), Gender varchar2(10), Address varchar2(30));
insert into student_type_1 values(1, 'asif', 'M', 'dhaka');
insert into student_type_1 values(2, 'sasib','F', 'ctg');
insert into student_type_1(ID,Gender, Name) values(4,'M', 'karim');
insert into student_type_1(ID,Gender, Name) values(5,'M', 'jakir');
insert into student_type_1 values(5, 'rahim','M', 'ctg');
insert into student_type_1 values(6, 'asha','F', 'sylhet');

-- column alias(changing name temporalily)
select ID "identity number", name "nickname" from student_type_1;

select ID + 1 "identity number", name "nickname" from student_type_1;

drop table student_type_2;
create table student_type_2(ID number, last_name varchar2(10), Address varchar2(30));
insert into student_type_2 values(1, 'asif', 'dhaka');
insert into student_type_2 values(2, 'sasib', 'ctg');
insert into student_type_2(ID, last_name) values(4, 'karim');
insert into student_type_2(ID, last_name) values(5, 'jakir');
insert into student_type_2 values(7, 'rahim', 'ctg');
insert into student_type_2 values(5, 'asha', 'sylhet');

-- table alias(changing name temporalily)----it is called equi join
select name "nickname",last_name "nickname", s2.id, s1.id from student_type_2 s2, student_type_1 s1 where s1.id = s2.id;

-- non equi join
select name "nickname",last_name "nickname", s2.id, s1.id from student_type_2 s2, student_type_1 s1 where s1.id < s2.id;

-- self join
select s1.last_name, s2.id, s1.id from student_type_2 s2, student_type_2 s1 where s1.id = s2.id;