select tmt.accompanied_service_id, max(tmt.number_time)
from
(
select ac.*, count(ctd.accompanied_service_id) as number_time
from  db_furama.accompanied_services ac
inner join db_furama.contract_details ctd on ctd.accompanied_service_id = ac.accompanied_service_id
inner join db_furama.contracts ct on ct.contract_id = ctd.contract_id
group by ac.accompanied_service_id
) tmt;