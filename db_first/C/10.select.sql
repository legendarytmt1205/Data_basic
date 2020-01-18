
update db_first.employees
set birthday = date(now())
where employee_id ='E_01';

select * 
from db_first.employees
where birthday = date(now())