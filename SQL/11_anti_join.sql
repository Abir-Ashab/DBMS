drop table emp;
create table emp(emo number, ename varchar2(20), dmo number);
insert into emp values(1, 'abir', 10);
insert into emp values(3, 'ashab', 30);
insert into emp values(5, 'niloy', 20);
insert into emp values(2, 'lilu', 50);

drop table dept;
create table dept(dname varchar2(20), dmo number);
insert into dept values('khairul', 10);
insert into dept values('kabir', 30);
insert into dept values('ovi', 10);
insert into dept values('ovi', 40);

select * from emp where dmo not in (select dmo from dept where dname = 'ovi');