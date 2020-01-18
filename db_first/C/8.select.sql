SELECT * 
FROM DB_FIRST.ORDERS
where year(created_date) = year(now())
and month(created_date) = month(now())
and day(created_date) = day(now())
and order_status = 'completed'



