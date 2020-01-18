-- drop database if exists `db_first` ;
create database `db_first`;
use `db_first`;
Create Table `db_first`.categories (
    category_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name nvarchar(50) unique,
    description_category nvarchar(500)
);

Create Table `db_first`.suppliers (
    supplier_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    supplier_name nvarchar(100) unique,
    email varchar(50) unique,
	phone_number varchar(50),
	address nvarchar(500)
);

Create Table `db_first`.customers (
    customer_id varchar(50) NOT NULL PRIMARY KEY,
    first_name nvarchar(50) not null,
    last_name nvarchar(50) not null,
	phone_number varchar(50),
	address nvarchar(500) not null,
    email varchar(50) unique not null,
	birthday datetime

);

Create Table `db_first`.employees (
    employee_id varchar(50) NOT NULL PRIMARY KEY,
    first_name nvarchar(50) not null,
    last_name nvarchar(50) not null,
	phone_number varchar(50),
	address nvarchar(500) not null,
    email varchar(50) unique not null,
	birthday datetime

);

Create Table `db_first`.products (
    product_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name nvarchar(50) not null,
    umage_url nvarchar(1000),
	price decimal(18,2) not null,
	discount decimal(18,2) not null,
    stock decimal(18,2) not null,
    category_id INT UNSIGNED,
    supplier_id INT UNSIGNED,
	constraint fk_category foreign key(category_id) references categories(category_id),
    constraint fk_supplier foreign key(supplier_id) references suppliers(supplier_id),
    description_product nvarchar(100) 
);

Create Table `db_first`.orders (
    order_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_date datetime not null,
    shipped_date datetime,
    order_status varchar(50) default 'waiting',
	order_description nvarchar(100),
    shipping_address nvarchar(500) not null,
    shipping_city nvarchar(500) not null,
    payment_type varchar(20) default'cash',
    customer_id varchar(50),
    employee_id varchar(50),
	constraint fk_customer foreign key(customer_id) references customers(customer_id),
    constraint fk_employee foreign key(employee_id) references employees(employee_id)
);

Create Table `db_first`.order_details (
    order_detail_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT UNSIGNED,
    order_id INT UNSIGNED,
    constraint fk_product foreign key(product_id) references products(product_id),
    constraint fk_order foreign key(order_id) references orders(order_id),
    quantity decimal(18,2) not null
);