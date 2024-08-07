create database example;
use example;
create table customer( customerID int,customerName char(40),contactname char(20),Address char(20),city char(10),postalcode int,country char(20));
insert into customer values(1,"Alfreds Futterkiste","Maria Anders","Obere Str.57","Berlin",12209,"Germany"),
(2,"Ana Trujillo Emparedados y helados","Ana Trujillo","Avdadela2222","Mexico D.F",05021,"Mexico"),
(3,"Antonia Moreno Taqueria","Antonio Moreno","Mataderos2312","Mexico D.F",05023,"Mexico"),
(4,"Around the horn","Thomas Hardey","120 Hanover Sq.","Londan",12534,"UK"),
(5,"Berglunds snabbkop","Christina Berglund","Berguvsvagen","Lulea",95822,"Swden");
select * from customer;
select country,city,customerID from customer;
select distinct(country) from customer;
select distinct(city) from customer; 
alter table customer add contactno char(10);
describe customer;
alter table customer rename column address to Location;  
alter table customer rename  to client;
alter table client modify city char(25);
alter table client drop column contactno;
truncate table client;
