---Inner Join

select order_id,customer_id, product_id,quantity, sales from sales
	
select product_id,product_name from product

select s.order_id, s.customer_id, s.product_id, s.sales, s.quantity, p.product_name  from sales as s
inner join product as p
on s.product_id = p.product_id

---Multiple Join

select order_id,customer_id, product_id,quantity, sales from sales

select product_id,product_name,category from product

select customer_id,customer_name,age from customer 

select sum(s.sales),avg(s.quantity),p.product_id,p.category from sales as s
inner join product as p
on s.product_id = p.product_id
inner join customer as c
on s.customer_id = c.customer_id
group by p.product_id,p.category
having sum(s.sales) > 500
order by avg(s.quantity) ASC
limit 20

-- left join


select * from sales

select * from product
	
select sum(s.sales),avg(s.quantity), p.product_id,p.category from sales as s
left join product as p
on s.product_id = p.product_id
group by p.product_id , p.category
having sum(s.sales)> 500
order by avg(s.quantity) ASC
limit 20
offset 20

-- right join

select * from sales

select * from product
	

select sum(s.sales),avg(s.quantity), p.product_id,p.category from sales as s
right join product as p
on s.product_id = p.product_id
group by p.product_id, p.category
having sum(s.sales) > 500
order by avg(s.quantity) ASC
limit 20
offset 20

-- full join

select * from sales

select * from product
	
select sum(s.sales),avg(s.quantity),p.product_id,p.category from sales as s
full join product as p
on s.product_id = p.product_id
group by p.product_id ,p.category
having sum(sales) > 500
order by avg(s.quantity) ASC
limit 20
offset 20



























