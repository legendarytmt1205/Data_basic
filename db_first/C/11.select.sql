select * 
from db_first.suppliers
where supplier_name in ('SAMSUNG','nokia');

select * 
from db_first.suppliers
where supplier_name = 'SAMSUNG' or supplier_name = 'nokia'