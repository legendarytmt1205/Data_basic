
update db_first.orders
set order_status = 'completed'
where order_id in (1,2);

select * 
from db_first.orders
where order_status = 'completed'