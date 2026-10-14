create database zecode_db;

use zecode_db;

create table zecode_product_info(id int primary key, price int, product_name varchar(30) not null, discount_in_amount int,total_products int);

insert into zecode_product_info values(1,3298, "t-shirt", 50, 500);
insert into zecode_product_info values(2,350, "shirt", 20, 300);
insert into zecode_product_info values(3,750, "pants", 20, 300,280), (4,250, "shorts", 20, 300,180);

alter table zecode_product_info add column sold_products int; 

select * from zecode_product_info;

select product_name, price-discount_in_amount as total_price from zecode_product_info;
select product_name, price+20 as total_price_with_bag_price from zecode_product_info where product_name = "shirt";
select product_name, price*total_products as total_income from zecode_product_info;
select product_name, total_products%sold_products as available_products from zecode_product_info;
select product_name, (price - discount_in_amount) * sold_products as net_revenue from zecode_product_info;
select product_name, total_products - sold_products as remaining_stock from zecode_product_info;
select product_name, discount_in_amount * sold_products as total_discounts_given from zecode_product_info;
