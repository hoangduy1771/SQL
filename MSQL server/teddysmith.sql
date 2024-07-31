-- view table structure 
sp_help [production.pokemon];
sp_columns pokemon;

USE BikeStores;
exec sp_help 'production.pokemon'

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'pokemon'
------------------------------------


-- how to create and delete db
create database BikeStores;

alter database BikeStores
set single_user -- or restricted_user
with rollback immediate;
go
drop database BikeStores;
go

----------------------------------------
-- how to create tables
use BikeStores;

create table production.pokemon (
	id int identity (1, 1) primary key,
	name varchar (255) not null,
	phone varchar (25),
	email varchar (255)

);

-- create table have relationship with pokemon table
create table production.trainer (
	id int identity (1, 1) primary key,
	first_name varchar (50) not null,
	last_name varchar (50) not null,
	email varchar (255) not null unique,
	phone varchar (25),
	poke_id int not null,
	foreign key (poke_id)
		references production.pokemon (id)
		on delete cascade on update cascade

);

-- INSERT data into table
-- set identity insert production.pokemon; (use if id column do not have identity feature)


insert into production.pokemon (name, phone, email)
values ('squirtle', '0214125488', 'squirtle@gmail.com'),
('bulbasaur', '0965452236', 'bulbasaur@gmail.com');


insert into production.pokemon
values ('charmander', '045852125', 'charmander@gmail.com');


-- update / edit tables
update production.pokemon
set name = 'Blastoise', phone = '01245568'
where id = 2;










