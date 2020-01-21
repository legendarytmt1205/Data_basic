select ct.contract_id
		, ts.type_services_name
		, ac.accompanied_service_name
		, count(ctd.accompanied_service_id) as number_time
from db_furama.accompanied_services ac
inner join db_furama.contract_details ctd on ctd.accompanied_service_id = ac.accompanied_service_id
inner join db_furama.contracts ct on ct.contract_id = ctd.contract_id
inner join db_furama.services s on s.service_id = ct.service_id
inner join db_furama.type_services ts on ts.type_service_id = s.type_service_id
group by ac.accompanied_service_id
having number_time = 1;