select c.full_name,c.customer_id, count(ct.contract_id) as count_contracts
from db_furama.customers c 
join db_furama.contracts ct on c.customer_id = ct.customer_id 
join db_furama.type_customers t on c.type_customer_id = t.type_customer_id 
where t.type_customer_name="Diamond" 
group by ct.customer_id 
order by count_contracts;

