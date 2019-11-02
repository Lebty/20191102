create database study_db;

show databases;

use study_db;

CREATE TABLE book(
bookid int primary key auto_increment,
bookname varchar(32) not null,
publisher varchar(32) not null,
price int
);

insert into book(bookname, publisher, price) values("축구의 역사","굿 미디어",25000);

CREATE TABLE orders(
orderid int primary key auto_increment,
cusid int,
bookid int,
saleprice int,
orderdate date
);

create table customer(
cusid int primary key not null auto_increment,
name varchar(20) not null,
address varchar(80) not null,
phone varchar(40)
);

select * from book where price between 10000 and 20000;
select * from book where price >= 10000 and price <= 20000;
select * from book where publisher in ("굿스포츠","대한미디어");
select * from book where publisher not in ("굿스포츠","대한미디어");
select bookname, publisher from book where bookname like "축구의 역사";
select bookname, publisher from book where bookname like "%축구%";
select * from customer where name like '김%';
select * from book where bookname like '_구%';
select * from book order by price;
select sum(saleprice) as total from orders;