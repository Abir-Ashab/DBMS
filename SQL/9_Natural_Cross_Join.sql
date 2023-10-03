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
insert into dept values('ovi', 20);
insert into dept values('olio', 40);

-- natural join-----> common jinish gulo ney shudhu,ekhane dmo common column tai eta dhore union korse
select emo, dmo, ename, dname from emp natural join dept;

-- cross join-------> all possible values ber kore,per table er row onno table er shob rows er shathe cross kore

-- way1
select * from emp, dept;

-- way2
select * from emp cross join dept;