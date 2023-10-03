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

-- left outer join(left table er shob ashbe, right er just common part tuku ashbe(+ denotes common parts)
-- way1
select * from emp, dept where emp.dmo = dept.dmo(+);
-- way2
select * from emp left outer join dept on emp.dmo = dept.dmo;


-- right outer join(right table er shob ashbe, left er just common part tuku ashbe(+ denotes common parts)
-- way1
select * from emp, dept where emp.dmo(+) = dept.dmo;
-- way2
select * from emp right outer join dept on emp.dmo = dept.dmo;

-- full outer join(all distinct possible outcome, both common and uncoomon)
select * from emp full outer join dept on emp.dmo = dept.dmo;

-- select * from emp, dept;