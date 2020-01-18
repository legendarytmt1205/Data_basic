select customer_name
from db_first.orders o
inner join db_first.customers c
on o.customer_id = c.customer_id
