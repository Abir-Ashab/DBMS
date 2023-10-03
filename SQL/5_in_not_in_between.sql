drop table student;
create table student(ID number, Name varchar2(10), Gender varchar2(10), Address varchar2(10), dob varchar2(20));
insert into student values(1, 'asif', 'M', 'dhaka', '08-aug-2001');
insert into student values(2, 'sasib','F', 'ctg','08-feb-2002');
insert into student(ID,Gender, Name) values(4,'M', 'karim');
insert into student(ID,Gender, Name) values(5,'M', 'jakir');
insert into student values(5, 'rahim','M', 'ctg', '04-aug-2000');
insert into student values(6, 'asha','F', 'sylhet', '12-aug-1999');

-- in (similir to address = 'dhaka' or adress = 'ctg')
select * from student where Address in('dhaka', 'ctg');

-- not in
select * from student where Address not in('dhaka', 'ctg');

-- between(similar to id >= 1 and id <= 4)
select * from student where id between 1 and 4;
select * from student where dob between '04-aug-2000' and '08-feb-2003';