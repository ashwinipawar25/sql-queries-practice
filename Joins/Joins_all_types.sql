use practice;

select * from dept;
select * from emp;
select * from mgr;

select d.depid,d.dname,e.empid,e.ename,e.salary 
from dept as d
inner join emp as e
on d.depid = e.depid ;

select d.depid,d.dname,e.empid,e.ename,e.salary
from dept as d
left join emp as e
on d.depid = e.depid;

select d.depid,d.dname,e.empid,e.ename,e.salary
from dept as d
right join emp as e
on d.depid = e.depid;

select d.depid,d.dname,e.empid,e.ename,e.salary
from dept as d
left join emp as e
on d.depid = e.depid
union
select d.depid,d.dname,e.empid,e.ename,e.salary
from dept as d
right join emp as e
on d.depid = e.depid;





