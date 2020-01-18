
SELECT birthday, concat(last_name," ", first_name) as full_name
FROM db_first.customers 
where year(birthday)>1990
