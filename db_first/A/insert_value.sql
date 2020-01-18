-- insert into categories
INSERT INTO db_first.categories (category_name,description_category)
VALUES ('category01', 'tmt')
		,('category02', 'mtmt')
		,('category03', 'aa')
		,('category04', 'bbb')
		,('category05', 'cccc');

-- insert into suppliers

INSERT INTO db_first.suppliers(supplier_name,email,phone_number,address)
VALUES ('samsung', 'av322bc@gmail.conm','04648','Quảng Ngãi')
		,('nokia', 'asd434333dbc@gmail.conm','031332648','Khánh Hòa')
		,('toshiba', '222abc@gmail.conm','0310002648','Biên Hòa')
        ,('apple', '22kkkabc@gmail.conm','0310002648','Đà Nẵng')
        ,('xiaomi', '1222llabc@gmail.conm','0310002648','Cần Thơ');
        
-- insert into customers
insert into db_first.customers
values('C_01','Triều','Trần','031332648','Hải Châu','a@gmail.com','1990-12-12')
		,('C_02','Huy','Ao','1332648','dn','abn@gmail.com','2000-1-3')
        ,('C_03','Le','Nguyễn','031348','dn','an@gmail.com','2001-2-6')
        ,('C_04','Lâm','Trần','0332648','dn','am@gmail.com','2004-12-2')
        ,('C_05','Nam','Trà','03133299648','dn','aff@gmail.com','2005-12-8');
        
-- insert into employees   
insert into db_first.employees
values('E_01','Triều','Trần','031332648','dn','a@gmail.com','2000-12-12')
		,('E_02','Huy','Ao','1332648','hn','abn@gmail.com','2000-1-3')
        ,('E_03','Le','Nguyễn','031348','n','an@gmail.com','2001-2-6')
        ,('E_04','Lâm','Trần','0332648','nn','am@gmail.com','2004-12-2')
        ,('E_05','Nam','Trà','03133299648','mn','aff@gmail.com','2005-12-8');     
        
-- insert into products	
insert into db_first.products(product_name,price,discount,stock,category_id,supplier_id)
values ('Iphone',200000.00,10,3,1,1)
		,('Mi09',500000.00,5,0,2,2)
        ,('Note','60000.00',50,5,3,3)
        ,('Oppo',40000,70,7,4,4)
        ,('Sony',2000000.00,50,0,5,5);
        
-- insert into orders	
insert into db_first.orders(created_date,shipping_address,shipping_city,customer_id,employee_id)
values ('2019-12-12','Hà Nội','dn','C_01','E_01'),
		('2017-12-12','Đà Nẵng','hn','C_02','E_02'),
		('2013-12-12','Hải Phòng','hp','C_03','E_03'),
		('2003-12-12','Quảng Nam','qn','C_04','E_04'),
		('2002-12-12','Hà Nội','nt','C_05','E_05');
                
-- insert into orders details	
insert into db_first.order_details(product_id,order_id,quantity)
values ('1','1','18.2'),
		('2','2','20.2'),
		('3','3','30.2'),
		('4','4','45.2'),
		('5','5','56.2');
				
        
        
        
        
        
        
        
        