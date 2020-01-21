
SET SQL_SAFE_UPDATES=0;

update db_furama.accompanied_services ac, (
			select ac.accompanied_service_id from db_furama.accompanied_services ac
			inner join db_furama.contract_details ctd on ctd.accompanied_service_id = ac.accompanied_service_id
			inner join db_furama.contracts ct on ct.contract_id = ctd.contract_id
			where year(ct.contract_date ) = '2019'
			group by ctd.accompanied_service_id
			having count(ac.accompanied_service_id) >=10
) tmt 
set ac.price = (ac.price * 2) 
where ac.accompanied_service_id = tmt.accompanied_service_id;

SET SQL_SAFE_UPDATES=1;