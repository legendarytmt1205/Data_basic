 SELECT ac.accompanied_service_id
		 , ac.accompanied_service_name
		 , ac.price
		 , ac.unit
         , ac.accompanied_service_status
		 , t.type_customer_name
         , c.address
from db_furama.accompanied_services ac 
join db_furama.contract_details ctd on ac.accompanied_service_id = ctd.accompanied_service_id
join db_furama.contracts ct on ctd.contract_id = ct.contract_id
join db_furama.customers c  on ct.customer_id = c.customer_id
join db_furama.type_customers t on c.type_customer_id = t.type_customer_id
where t.type_customer_name = "Diamond" and c.address in ("Vinh", "Quảng Ngãi");
