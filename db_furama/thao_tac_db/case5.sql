select c.full_name,c.customer_id, t.type_customer_name,
	   ct.contract_id, s.service_name, ct.contract_date,
	   ct.contract_date_end, sum(s.rental_costs + ctd.quantity*ac.price) as tong_tien
from db_furama.customers c 
left join db_furama.type_customers t on c.type_customer_id = t.type_customer_id 
left join db_furama.contracts ct on c.customer_id = ct.customer_id
left join db_furama.services s on ct.service_id = s.service_id
left join db_furama.contract_details ctd on ct.contract_id = ctd.contract_id
left join db_furama.accompanied_services ac on ctd.accompanied_service_id = ac.accompanied_service_id
group by ct.contract_id;