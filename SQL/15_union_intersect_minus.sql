drop table emp1;
create table emp1(emo number, ename varchar2(20), dmo number);
insert into emp1 values(1, 'abir', 10);
insert into emp1 values(3, 'ashab', 30);
insert into emp1 values(5, 'niloy', 20);
insert into emp1 values(2, 'lilu', 50);

drop table emp2;
create table emp2(emo number, ename varchar2(20), dmo number);
insert into emp2 values(1, 'abir', 10);
insert into emp2 values(3, 'ashab', 30);
insert into emp2 values(4, 'niloy', 20);
insert into emp2 values(6, 'lilu', 50);

-- distinct
select * from emp1 union (select * from emp2);

-- all the things presnet 
select * from emp1 union all (select * from emp2);

-- intersect(common part tuku)
select * from emp1 intersect (select * from emp2);

-- differences with natural join are  : 
-- 1)oikhane ekta common column ber kore jar name same,tarpor shudhu oi column e same ID jegular oigulare dekhe, ar ekhane shibgula column e or ekta row er shathe arekta row match korle tobe e intersect kore

-- minus
select * from emp1 minus (select * from emp2);
