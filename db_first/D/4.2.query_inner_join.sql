
select (select category_name 
		from db_first.categories
		where category_id = p.category_id )
as category_name ,sum(p.stock) as so_luong  
from db_first.products p
group by p.category_id

