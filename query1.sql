use classicmodels;
show tables;
select * from customers;
select contactLastName,contactFirstName,creditLimit from customers;
select * from employees;
select employeeNumber,lastName,firstName from employees;
select * from offices;
select officeCode,city,addressLine1 from offices;
select * from orderdetails;
select orderNumber,productCode,orderLineNumber from orderdetails;
select * from orders;
select orderNumber,orderDate,status from orders;
select * from payments;
select customerNumber,paymentDate,amount from payments;
select * from productlines; 
select productLine, htmlDescription from productlines; 
select * from products;
select productCode,productLine, productScale from products;
select country from customers;
select distinct (country) from customers;
select productLine from productlines;
select distinct (productLine) from productLines;
use classicmodels;
select * from customers;
select distinct (customerNumber) from customers;
select distinct (customerName) from customers;
select distinct (contactLastName) from customers;
select distinct (contactFirstName) from customers;
select distinct (phone) from customers;
select distinct (addressLine1) from customers;
select distinct (addressLine2) from customers;
select distinct (city) from customers;
select distinct (state) from customers;
select distinct (postalCode) from customers;
select distinct (country) from customers;
select distinct (salesRepEmployeeNumber) from customers;
select distinct (creditLimit) from customers;
select * from employees;
select distinct (employeeNumber) from employees;
select distinct (lastName) from employees;
select distinct (firstName) from employees;
select distinct (extension) from employees;
select distinct (email) from employees;
select distinct (officeCode) from employees;
select distinct (reportsTo) from employees;
select distinct (jobTitle) from employees;
select * from offices;
select distinct (officeCode) from offices;
select distinct (phone) from offices;
select distinct (city) from offices;
select distinct (addressLine1) from offices;
select distinct (state) from offices;
select distinct (country) from offices;
select distinct (addressLine2) from offices;
select distinct (postalCode) from offices;
select distinct (territory) from offices;
select * from orderdetails;
select distinct (ordernumber) from orderdetails;
select distinct (productCode) from orderdetails;
select distinct (quantityOrdered) from orderdetails;
select distinct (priceEach) from orderdetails;
select distinct (orderLineNumber) from orderdetails;




use classicmodels;
select * from customers;
select contactFirstName,contactLastName,creditLimit
from customers
where creditlimit >100000;
select country
from customers
where country='USA';
select * from productlines;
select productLine,textDescription,htmlDescription,image 
from productlines
where productLine='classic Cars';
select customerName,creditlimit, country
from customers
where creditLimit>100000 and country='UK';

select customerName,creditlimit, country
from customers
where creditLimit<30000 or country='Austrailia';

 select customerName,creditlimit, country
from customers
where creditLimit>100000 and country='UK';

select productLine
from productlines
where productLine!='classic Cars';

select contactFirstname,contactLastName,creditLimit
from customers
order by creditLimit desc;

select contactFirstname,contactLastName,creditLimit
from customers
order by contactFirstname asc;

select contactFirstname,contactLastName,creditLimit,country
from customers
where country='USA'
order by creditLimit desc;

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
where state is null;



select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
where addressLine2 is null;

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
where addressLine2 is not null;

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers;

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
limit 5;

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
order by creditlimit desc
limit 5;


select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
order by creditlimit desc
limit 4,1;

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
order by creditlimit desc
limit 6,1;

select customerName
from customers
where country='USA' or Country='UK' or country='austrailia';

 select customerName
from customers
where country in ('USA','UK','austrailia');# "IN" is used for the "or" keyword.

select * from products;
select productLine
from products
where productLine in ('Motorcycles','trucks and Buses','classic Cars');
# 'between is used for the range.
use classicmodels;
select creditLimit  from customers where creditLimit between '100000' and '200000';

select * from products;
select buyprice  from products where buyPrice between '30' and '50';


# LIke operation
select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers;

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
where contactfirstname like 't%';

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
where contactfirstname like 'v%';

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
where contactfirstname like '%s';

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
where contactfirstname like '%z';

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
where contactfirstname like '% ';

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
where contactfirstname like 'a%n';

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
where contactfirstname like 's%t ';
select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
where contactfirstname like 's%t_';

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
where contactfirstname like 's%v_';

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
where contactfirstname like '%ha%';

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
where contactfirstname like '%vi%';

select contactFirstname,contactLastName,creditLimit,country, state,addressLine2
from customers
where contactfirstname like 'a___';

# statistical operation.
select count(contactFirstname)
from customers;

select count(contactFirstname)
from customers
where creditlimit>170000;

select count(contactFirstname)
from customers
where creditlimit<30000 and country='austrailia';


select count(contactFirstname) as cf  #'as cf' it is known as "alice". 
from customers
where creditlimit<30000 and country='uk';

select sum(creditlimit)
from customers
where country='uk';

select avg(creditlimit)
from customers
where country='uk';

select min(creditlimit)
from customers
where country='uk';

select max(creditlimit)as MaC,
min(creditlimit) as MIC,
count(creditlimit)as COC,
avg(creditlimit) as AVC,
sum(creditlimit)as SUC
from customers;

#group by
select country, max(creditlimit)as MaC,
min(creditlimit) as MIC,
count(creditlimit)as COC,
avg(creditlimit) as AVC,
sum(creditlimit)as SUC
from customers
group by country
order by  Mac,MIC,COC,AVC,SUC desc limit 5;

select * from products;

select productline, max(buyprice)as MaC,
min(buyprice) as MIC,
count(buyprice)as COC,
avg(buyprice) as AVC,
sum(buyprice)as SUC
from products
group by productline
order by  Mac,MIC,COC,AVC,SUC desc limit 5;

use classicmodels;

select * from customer;

select country, avg(creditlimit) as avgc
from customers
where creditlimit>100000 
group by country;

#having clouse
select country, avg(creditlimit) as avgc
from customers
group by country
having avg(creditlimit)>100000;

select country, avg(creditlimit) as avgc
from customers
group by country
having avg(creditlimit)<100000
order by avgc desc
 limit 5;
 
 select productline, sum(buyprice) as avgc
from products
group by productline
order by avgc desc
 limit 4,1;
 
 # subquery 
 select * from products
 where buyprice>(select avg(buyprice) from products);
 
 select * from products
 where buyprice = (select max(buyprice) from products
 where buyprice <
 (select max(buyprice) from products));
 
 select * from customers
 where customernumber in (
 select customernumber from orders
 where status='cancelled');
 
 
 select * from employees
 where  officecode in (
 select officecode from offices
 where country='uk');
 
 use classicmodels;
 select * from customers
 where customernumber
 in
 (select customernumber from orders
 where ordernumber 
 in
 (select ordernumber from orderdetails
 where productcode
 in
 (select productcode from products
 where productline='classic cars')));
 
 use sample_1;
 select * from employee;
 select * from  department;
 
 select e.empid,e.ename,e.salary,d.depid,d.dname
 from employee as e inner join department as d
 on e.depid=d.depid;
 
 select e.empid,e.ename,e.salary,d.depid,d.dname
 from employee as e left join department as d
 on e.depid=d.depid;
 
 select e.empid,e.ename,e.salary,d.depid,d.dname
 from employee as e right join department as d
 on e.depid=d.depid;
 
 select e.empid,e.ename,e.salary,e.depid,d.depid,d.dname
 from employee as e left join department as d
 on e.depid=d.depid 
 union
 select e.empid,e.ename,e.salary,e.depid,d.depid,d.dname
 from employee as e right join department as d
 on e.depid=d.depid;
 
 
 select * from
 employee cross join department;
 
 select * from orders;
 select * from customers;
 
 use classicmodels;
 select c.contactlastname, c.contactfirstname,c.creditlimit,o.orderdate, o.ordernumber,o.status,o.customernumber
 from customers as c inner join orders as o
 on c.customernumber=o.customernumber
 where o.status='cancelled';
 
 select * from employees;
 select * from offices;
 select  o.officecode,o.city,o.phone,e.lastname,e.firstname
 from employees as e inner join offices as o
 on e.officecode=o.officecode;
 
 
 
 select concat( contactfirstname,' ',contactlastname) as fill_name
 from customers;
 
 select substring('hello world',1,5);
 
 select upper('hello')as upper_case;
 select lower('hello')as upper_case;
 select length('hello') as length_of_string;
 select trim(' hello ');
 select trim(leading '0' from '000123');
 select replace('hello world','world','universe');
 select instr('hello world','world');
 select reverse('hello');
 select left('hello world',5);
 select right('hello world',5);
 select locate('l','hello');
 select abs(-10);
 select round(3.14159,2);
 select ceiling(3.5), floor(3.5);
 select sqrt(16);
 select power(2,3);
 select now(); #current date and time
 select curdate(); #current date
 select curtime(); # current time
 select date_add('2024-05-20',interval 1 month);
 select datediff('2024-05-20','2024-04-20');
 select date_format(now(),'%y-%m-%d');
select date_format(now(),'%d-%m-%y');
select date_format(now(),'%m-%d-%y');
select dayofweek('2024-05-20'); 
select dayofweek(now()); 

 
 





