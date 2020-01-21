update db_furama.customers c, (
select c.customer_id from db_furama.customers c
inner join db_furama.type_customers tc on tc.type_customer_id = c.type_customer_id
inner join db_furama.contracts ct on ct.customer_id = c.customer_id
where tc.type_customer_name = 'Platinium'
and ct.total > 10000000
and year(ct.contract_date) = '2019'
group by ct.customer_id
) tmt 
set c.type_customer_id = 1 
where c.customer_id = tmt.customer_id;