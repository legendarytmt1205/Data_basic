select product_name,category_name, supplier_name from db_first.products p
inner join db_first.categories c on c.category_id = p.category_id
inner join db_first.suppliers s on s.supplier_id = p.supplier_id