create table product(
id int primary key identity not null,
name nvarchar(40) not null,
qiymet int not null,
category_id int references category(id))

create table category(
id int primary key identity not null,
name nvarchar(40) not null)

create table country(
id int primary key identity not null,
name nvarchar(40) not null)

alter table product
add country_id int references country(id)

create view productInfo
--as 
--select product.name,product.qiymet,country.name[olke adi],category.name[cateqoriya adi] from product
--Join category
--on product.category_id=category.id
--Join country
--on product.country_id=country.id

select * from productInfo