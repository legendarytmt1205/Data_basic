select e.employee_id
, e.full_name 
, e.email
, e.phone_number
, e.birthday
, e.address
, 'employee'
from db_furama.employees e
union all
select c.customer_id
, c.full_name
, c.email
, c.phone_number
, c.birthday
, c.address
, 'customer'
from db_furama.customers c;