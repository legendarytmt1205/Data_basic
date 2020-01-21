SET SQL_SAFE_UPDATES=0;
delete from db_furama.employees e 
where not exists ( select ct.employee_id 
					from db_furama.contracts ct 
					where ct.contract_date between "2017-01-01" and "2019-12-31"
					and ct.employee_id = e.employee_id);
SET SQL_SAFE_UPDATES=1;