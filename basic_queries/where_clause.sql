select *
from dept;

select distinct
* from dept;

select distinct dname 
from dept;

select count(distinct dname) 
from dept;

select dname 
from dept 
where depid <= 'D3';

select dname
from dept 
where depid = 'D1';

select dname 
from dept 
where depid > 'D1';

select dname 
from dept 
where depid >= 'D1';

select dname 
from dept 
where depid <> 'D1';

select dname 
from dept 
where depid between 'D2' and 'D4';

select dname 
from dept 
where depid like 'd%';

select dname 
from dept 
where depid in ('D1' and 'D2' and 'D3');



