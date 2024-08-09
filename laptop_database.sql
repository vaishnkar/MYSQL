create database laptop;
use laptop;
create table company(comname char(12),price int,guarantee char(14));
insert into company values('dell',60000,'2 year'),
('HP',56000,'3 year'),
('Apple',80000,'3 year');
update company set price=62000 where comname='Apple';
select * from company; 
delete  from company where comname='Apple';
select * from company;
use laptop;
create table os(osname char(12),comname char(12));
insert into os values('Windows','dell'),
('linux','HP'),
('Oracle','Apple');
select * from os;
update os set comname='dell' where osname='linux';
select * from os;
delete from os where comname='dell';
select * from os;

