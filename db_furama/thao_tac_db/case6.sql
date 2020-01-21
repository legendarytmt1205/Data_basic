select s.service_id, s.service_name, s.area_used, s.rental_costs, ts.type_services_name
from db_furama.services s   
inner join db_furama.type_services ts on s.type_service_id=ts.type_service_id
where not exists(select ct.contract_id 
				 from db_furama.contracts ct 
                 where (ct.contract_date between "2019-01-01" and "2019-03-31") 
						AND ct.service_id=s.service_id);
                                         