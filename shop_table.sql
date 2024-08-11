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
CREATE TEMPORARY TABLE tmp (
        article INT(4) UNSIGNED ZEROFILL DEFAULT '0000' NOT NULL,
        price   DOUBLE(16,2)             DEFAULT '0.00' NOT NULL);
INSERT INTO tmp SELECT article, MAX(price) FROM shop GROUP BY article;

SELECT shop.article, dealer, shop.price FROM shop, tmp
WHERE shop.article=tmp.article AND shop.price=tmp.price;
DROP TABLE tmp;
SELECT article,
       SUBSTRING( MAX( CONCAT(LPAD(price,6,'0'),dealer) ), 7) AS dealer,
  0.00+LEFT(      MAX( CONCAT(LPAD(price,6,'0'),dealer) ), 6) AS price
FROM   shop
GROUP BY article;
 SELECT @min_price:=MIN(price),@max_price:=MAX(price) FROM shop;
 SELECT * FROM shop WHERE price=@min_price OR price=@max_price;



