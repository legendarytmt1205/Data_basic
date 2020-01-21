select distinct full_name from db_furama.customers;

select full_name from db_furama.customers group by full_name;

select full_name from db_furama.customers 
union select full_name from db_furama.customers ;
