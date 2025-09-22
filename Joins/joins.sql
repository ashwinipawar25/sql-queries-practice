use practice;

select * from dept;
select * from emp;

-- inner join
-- return the records that have matching values in both tables
select * 
from dept as d 
inner join emp as e
on d.depid = e.depid;

-- left join
-- return all record from left table ,and the matching record from right table
select *
from dept as d
left join emp as e
on d.depid = e.depid;

-- right join
-- return all records from right table ,and the matching records from left table
select * 
from dept as d
right join emp as e
on d.depid = e.depid;

-- full outer join
-- return all records when there is a match in either left or right 
select * 
from dept as d
left join emp as e
on d.depid = e.depid
union
select * 
from dept as d
right join emp as e
on d.depid = e.depid;

-- cross join
-- combines every row of left table to every row of right table
select *
from dept 
cross join emp ;

-- self join
select * 
from emp as e
join emp as d
on e.depid = d.depid;







