drop table student;
create table student(ID number, Name varchar2(10), Gender varchar2(10), Address varchar2(30));
insert into student values(1, 'asif', 'M', 'dhaka');
insert into student values(2, 'zawad','F', 'ctg');
insert into student(ID,Gender, Name) values(4,'M', 'karim');
insert into student(ID,Gender, Name) values(5,'M', 'jakir');
insert into student values(5, 'rahim','M', 'ctg');
insert into student values(6, 'asha','F', 'sylhet');

-- select-where
select * from student where Gender = 'M';

-- select-where-printing method with not null
select id || '-' || name || '-' || Gender from student where Address is null;

-- order by(with only one priority(id))
select * from student order by id desc;

-- order by(with multiple priority,one after another separated by comma(1st id, id same hole name))
select * from student order by id, Name;

