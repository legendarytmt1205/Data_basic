select e.employee_id
, e.full_name
, e.phone_number
, count(ct.employee_id) as number_time
from db_furama.employees e
inner join db_furama.contracts ct on e.employee_id = ct.employee_id
where ct.contract_date between "2018-01-01" and "2019-12-31"
group by e.employee_id
having number_time <=3;