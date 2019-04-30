create table cities (id int not null primary key identity,name nvarchar(100),countryId int)
insert into cities
Values('Moskva',2)
Select * from cities
Select * from country
update cities
set countryId=3
where id=2
ALTER TABLE cities
Add foreign key(countryId) References country(id)