create database sample_1;
drop database sample_1;
show databases;
use sample_1;
create table student(
sid int, sname char(10),city char(10),percentage float);
insert into student values(1,'vaishnavi','nashik',89.20);
show tables;
use sample_1;
create table student(
sid int, sname char(10),city char(10),percentage float);
create table student1(
sid int, sname char(10),city char(10),percentage float);
insert into student1 values(1,'vaishnavi','nashik',89.20);
create table student1(
sid int, sname char(10),city char(10),percentage float);
create table student2(
sid int, sname char(10),city char(10),percentage float);
show tables;
insert into student2
 values(1,'vaishnavi','nashik',89.20);
select * from student2;

 insert into student2
 values(1,'vaishnavi','nashik',89.20),
 (2,'nikita','jalgao',93.03),
 (3,'jyoti','pune',78.87),
 (4,'vaishali','ahema',98.09),
 (5,'navin','jaipur',97.56),
 (6,'jaya','rajsthan',87.87);
 select * from student2; 