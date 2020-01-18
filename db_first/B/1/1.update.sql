
SET SQL_SAFE_UPDATES = 0;
update db_first.products
set price = price + price/10
where price <100000;
SET SQL_SAFE_UPDATES = 1;
