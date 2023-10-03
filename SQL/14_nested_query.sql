drop table student_type_2;
create table student_type_2(ID number, last_name varchar2(10), Address varchar2(30));
insert into student_type_2 values(1, 'asif', 'dhaka');
insert into student_type_2 values(2, 'sasib', 'ctg');
insert into student_type_2(ID, last_name) values(4, 'karim');
insert into student_type_2(ID, last_name) values(5, 'jakir');
insert into student_type_2 values(7, 'rahim', 'ctg');
insert into student_type_2 values(5, 'asha', 'sylhet');

SELECT ID FROM student_type_2 GROUP BY ID HAVING COUNT(*) > 1;
SELECT last_name FROM student_type_2 WHERE ID IN (SELECT ID FROM student_type_2 GROUP BY ID HAVING COUNT(*) > 1);
