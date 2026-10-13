create database movie_db;

use movie_db;

create table movies (
	movie_id int primary key, 
    title varchar(100) not null, 
    release_year year
);

insert into movies values (1,"",2025);
update movies set title = "aaa" where movie_id = 1;
insert into movies values (2,"bbb",2024);
delete from movies where movie_id = 2;

create table reviews(
	review_id int primary key, 
    rating int, 
    review_text text, 
    movie_id int, 
    constraint fk_movie foreign key (movie_id) references movies(movie_id)
    );
    
    insert into reviews values(2,4,"dsds",2);
    
    desc movies;
    desc reviews;
    
    select * from movies;
    select * from reviews;