use example;
create table shop(article int(4) unsigned zerofill default '0000' not null,
             dealer char(20)                       default ''     not null, 
			 price double(16,2)                    default '0.00' not null,
             primary key(article, dealer));
insert into shop values(1,'A',3.45),(1,'B',3.99),(2,'A',10.99),(3,'B',1.45),(3,'C',1.69),(3,'D',1.25),(4,'D',19.95);
select * from shop;
select max(article) as article from shop;
select article, dealer, price
from shop 
where price= ( select max(price) from shop);
select article, dealer,price
from shop 
where price=19.95;
select article,dealer,price
from shop
order by price desc
limit 1;
select article, dealer,price
from shop
group by article;
select article,dealer,price
from shop s1
where price= (select max(s2.price)
			from shop s2
			where s1.article= s2.article);
