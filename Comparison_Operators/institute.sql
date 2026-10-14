create database institute_db;

use institute_db;

create table institute_info(id int primary key, name varchar(20) not null, owner varchar(15), 
	no_of_employees int, start_year year, location varchar(30));
    
insert into institute_info values (1,"aaa","xxx",590,2003,"a@hhk");
insert into institute_info values (2,"fekjl","www",1828,2015,"a@hgj");
insert into institute_info values(7,"eee","nbj",9088,2005,"c@hhk");
insert into institute_info values(4,"hjk","tytww",1000,2023,"a@bhg");

desc institute_info;

select * from institute_info;
select * from institute_info where id = 4;
select * from institute_info where name ="eee";
select * from institute_info where no_of_employees> 2000;
select * from institute_info where no_of_employees>= 1000;
select * from institute_info where no_of_employees< 1000;
select * from institute_info where no_of_employees!= 1000;