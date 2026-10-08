create database flipkart_db;

use flipkart_db;

create table product_info (
    id int,
    name varchar(100),
    description text,
    price float,
    discount decimal(5,2),
    category enum('TV','Mobile','Watch','Laptop'),
    features set('red','good','new','waterproof'),
    stock smallint,
    rating double
);

insert into product_info
values
(1, 'Samsung TV', 'Smart LED TV', 45000.50, 10.50,
 'TV', 'red,good,new', 25, 4.7);
 
 desc product_info;
 
 select * from product_info;