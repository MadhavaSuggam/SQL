create database book_shop;
show databases;
use book_shop;
select book_shop();
create table Books(
book_id int NOT NULL auto_increment,
title varchar(50),
author_fname varchar(20),
author_lname varchar(20),
released_year int,
stock_quantity int,
pages int,
primary key(book_id)
);

insert into Books(title,author_fname,author_lname,released_year,stock_quantity,pages)
values
('Naa Sav Nen Sasta','Madhava','Suggam',2024,1000,950),
('solo brathuke so better','Dileep','Kumar',2023,900,700),
('yevvara nuvvu','Mahendra','Babu',2022,800,750),
('baane extralu ****** ra','bharath','kumar',2020,92,340);
select * from Books;
select title from Books;
select concat('The',' ',title) as newTitle from Books;
select title,author_fname,pages from Books;
select concat_ws('     ',title,author_fname,pages) as info from Books;
select title,pages from Books where pages>900;
select title from Books where title like 'n%';
select title,pages from Books where pages>99 && pages<1000;
select title,pages from Books where pages like '___';
select sum(pages) from Books;
select title from Books where title like '%n%';
select title from Books limit 3;