SELECT *
FROM db_first.products 
where (price+ price*discount/100) < 100000;
