use northwind;

create view country_sales as 
select  c.country, sum(o.quantity*o.unitPrice) as total from customer c join salesorder using(custId) join orderdetail o using(orderId) group by c.country;
