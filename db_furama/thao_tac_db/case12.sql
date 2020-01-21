select ct.contract_id
, ct.contract_date
, s.service_id
, e.full_name
, c.full_name
, c.phone_number
, s.service_name 
, ct.deposit
from db_furama.accompanied_services ac 
inner join db_furama.contract_details ctd on ctd.accompanied_service_id = ac.accompanied_service_id
inner join db_furama.contracts ct on ct.contract_id = ctd.contract_id
inner join db_furama.customers c on c.customer_id = ct.customer_id
inner join db_furama.services s on ct.service_id = s.service_id
inner join db_furama.employees e on e.employee_id = ct.employee_id
where
 exists (select ct.contract_date 
			from db_furama.contracts ct 
            where ct.service_id = s.service_id 
            and ct.contract_date between '2019-10-01' and '2019-12-31')
and not exists (select ct.contract_date 
				from db_furama.contracts ct 
				where ct.service_id = s.service_id 
				and ct.contract_date between '2019-01-01' and '2019-06-30')
group by ctd.contract_id;