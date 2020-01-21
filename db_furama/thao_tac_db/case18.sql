SET SQL_SAFE_UPDATES=0;

delete c, ctd from db_furama.customers c 
inner join db_furama.contracts ct on ct.customer_id = c.customer_id 
left join db_furama.contract_details ctd on ctd.contract_id = ct.contract_id
where not exists (select ct.contract_id 
					from db_furama.contracts ct 
					where ct.contract_date > '2016-01-01' 
					and ct.customer_id = c.customer_id);

SET SQL_SAFE_UPDATES=1;