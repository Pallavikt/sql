create database pg_db;

use pg_db;

create table pg_info(id int primary key, name varchar(20) not null, rent int not null, owner varchar(20), no_of_stays int not null);

insert into pg_info values (1,"aa", 5000, "xx", 50), (2,"aa", 5500, "xx", 50);
insert into pg_info values (3,"qqq", 6000, "zz", 58), (4,"www", 6500, "cc", 67),(5,"eee", 7000, "vv", 70);

desc pg_info;
select * from pg_info;

select * from pg_info where name = "aa" and id = "2";
select * from pg_info where name = "aa" or id = "2";
select * from pg_info where name = "aa" or name = "qqq";
select * from pg_info where not name = "aa" ;
select * from pg_info where name = "eee" and not no_of_stays = "60";
select * from pg_info where name = "aa" and id = "2";