
select s.service_id, s.service_name, s.area_used,s.number_max_people, s.rental_costs, ts.type_services_name
from db_furama.services s   
inner join db_furama.type_services ts on s.type_service_id=ts.type_service_id
where exists(select ct.contract_id  
			  from db_furama.contracts ct  
              where year(ct.contract_date)='2018' 
			  and ct.service_id=s.service_id) 
and not exists(select ct.contract_id   
				from db_furama.contracts ct 
				where year(ct.contract_date)='2019' 
				and ct.service_id=s.service_id);
                
                select * from db_furama.contracts
