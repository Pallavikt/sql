create database product_db;

use product_db;

create table product_info(id int primary key, name varchar(120), price int, category varchar(100), description text);

insert into product_info values(1,"laptop",129,"electronics","hajdkiquoqi"),(2,"grinder",2679,"kitchen","ahdljkxkwm  kj;kp"),
(3,"book",129,"stationary","hajdkiqu lk;loqi");
insert into product_info values(4,"laptop",15029,"electronics","hajdkiquoqi");
insert into product_info values(7,"iphone",300029,"electronics","hajdkiqhjuoqi");
insert into product_info values(9,"pen", 10,"stationary", null);

delete from product_info where id = 6;

select * from product_info;

select name as product_name,category,price from product_info where price between 1000 and 3000;
select * from product_info where price not between 1000 and 16000;
select distinct name, category from product_info where price not between 1000 and 15000;
select * from product_info where category in ("electronics");
select * from product_info where category not in ("electronics");
select * from product_info where category in ("electronics");
select * from product_info where description is null;
select * from product_info where category like ("e%");
select name, price from product_info where price between 50 and 500;
select name, price from product_info where price not between 200 and 20000;
select name, category from product_info where category in ('electronics', 'stationary');
select name, category from product_info where category not in ('electronics');
select name, category from product_info where category like '%ry';
select name from product_info where name not like 'l%';
select name, category from product_info where category like '_l%';
select name, category from product_info where category not like '__a_i%';
select name, description from product_info where description is not null;