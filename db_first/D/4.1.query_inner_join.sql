
select count(c.category_name) 
as count,c.category_name,sum(p.stock) 
as so_luong 
from db_first.categories c
inner join db_first.products p
on c.category_id = p.category_id
group by c.category_name 
