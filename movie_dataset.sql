
use movies;
create table ticket(
tno int,seatno int,moviename char(10),time time);
insert into ticket values(101,1,'hangama','02:30:22');
insert into ticket values(102,2,'don','03:33:12'),
(103,3,'kakan','02:27:00');
select * from ticket;

create table customer(cusname char(12),tno int,ticketprice int);
insert into customer values('vaishnavi',101,100),
('payal',102,200),
('komal',103,250);
select * from customer;
update ticket
set moviename='sitaramam'
where tno=101;
select * from ticket;
delete from ticket where tno=102;
select * from ticket;
update customer set cusname='kirti' where tno=101;
delete from customer where tno=101;
select * from customer;
