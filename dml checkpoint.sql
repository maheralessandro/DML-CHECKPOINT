use stor ;

insert into custome value (
'C01',
'ALI',
71321009
);

insert into custome value (
'C02',
'ASMA',
77345823
);

insert into product (
product_id ,
product_name ,
category ,
price
) value (
'P01' ,
'samsung galaxy s20' ,
'smartphone' ,
3299
),
(
'P02' ,
'asus notebook' ,
'pc' ,
4599
);

insert into orders (
customer_id ,
product_id ,
order_date ,
quantity ,
total_amount
) value (
'C01' ,
'P02' ,
null ,
2 ,
9198
),(
'C02' ,
'P01' ,
'2020-05-28' ,
1 ,
3299
);

insert into custome value (
'C03',
'DALI',
25342152),
('C04',
'MAHER' ,
94300200
);

select * from PRODUCT ;

insert into product (
product_id ,
product_name ,
category ,
price
) value
(
'P03' ,
'iphene' ,
'apple' ,
5500) ,
('P04' ,
'MSI' ,
'PC' ,
6000
);

insert into orders (
customer_id ,
product_id ,
order_date ,
quantity ,
total_amount
) value (
'C01' ,
'P03' ,
'2024-05-12' ,
3 ,
5500
),(
'C04' ,
'P04' ,
'2024-04-22' ,
2 ,
12000 ),
(
'C03' ,
'P01' ,
'2024-05-11' ,
1 ,
3299
);

select * from custome ;

select product_name , category from product where   price  > 5000 and price < 10000  ;

select * from product
order by price desc ;

select count(total_amount) , avg(total_amount) , min(total_amount) , max(total_amount)
from orders ;

select count(product_id) , product_id from orders 
group by product_id ;

select count(customer_id) as tot , customer_id  from orders
group by customer_id  
having tot > 1;

select month(order_date) , sum(quantity) from orders where year(order_date) = 2024
group by month(order_date) ;

select pr.product_name , col.customer_name , ord.order_date
from product pr inner join orders ord on ord.product_id = pr.product_id
inner join custome col on col.customer_id = ord.customer_id ;

select * from orders 
where year(order_date)  < year(current_date())-2 ;

select cus.customer_id , cus.customer_name , ord.quantity
from custome cus inner join orders ord on cus.customer_id = ord.customer_id 
where ord.quantity = 0 ;
