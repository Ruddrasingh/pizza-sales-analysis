create database pizza_sales_analysis;

-- Check data
select * 
from pizza_sales;

-- Copy table for safety
CREATE TABLE pizza_sale AS 
SELECT * 
FROM pizza_sales;

-- Check to confirm copied propabaly
select * 
from pizza_sale;

-- Modify the order_date column
alter TABLE pizza_sale 
modify order_date date;

update pizza_sales
set order_date = str_to_date(order_date, '%d-%m-%Y');

-- Modify the order_date column
alter TABLE pizza_sale 
modify order_time time;

update pizza_sale
set order_time = str_to_date(order_time, '%H:%i:%s');

-- add hour column
alter TABLE pizza_sale 
add column _hour_ int;

update pizza_sale
set _hour_ = HOUR(order_time);

-- add month column
alter TABLE pizza_sale 
add column _month_ int;

update pizza_sale
set _month_ = month(order_date);

-- add day column
alter TABLE pizza_sale 
add column _day_ char(20);

update pizza_sale
set _day_ = DATE_FORMAT(order_date, '%a');

-- Metrics

-- Total Revenue
select round(sum(total_price),2) Total_Revenue
from pizza_sale;

-- Total pizza sold
select sum(quantity) Total_pizza_sold
from pizza_sale;

-- Total orders
select count(distinct order_id) Total_orders
from pizza_sale;

-- Average Pizza per Order

with cte as
(
select order_id,
sum(quantity) ordered
from pizza_sale 
group by order_id
order by order_id
)
select avg(ordered) pizza_per_order
from cte;

-- Average order value 

with cte as
(
select order_id,
sum(total_price) cost
from pizza_sale 
group by order_id
order by order_id
)
select round(avg(cost),2) price_per_order
from cte;

-- Which pizza category generates the highest revenue?

select pizza_category,
sum(total_price) total_revenue
from pizza_sale 
group by pizza_category
order by total_revenue Desc;

-- Which specific pizza (pizza_name) has the highest sales volume?

select pizza_name,
sum(quantity) total_quantity
from pizza_sale 
group by pizza_name
order by total_quantity Desc;

-- What are the peak hours for pizza orders?

select _hour_,
count( distinct order_id) orders
from pizza_sale
group by _hour_
order by _hour_;

-- Which day of the week had the highest number of orders?

select _day_,
count( distinct order_id) orders
from pizza_sale
group by _day_
order by orders desc;

-- Is there a significant difference in the average unit price between different pizza size?

select pizza_size,
round(avg(unit_price),2) avg_price
from pizza_sale 
group by pizza_size
order by avg_price Desc;

-- Which pizza size is most commonly ordered across different categories?

with cte as
(
select pizza_category,
pizza_size,
count(*) ordered,
row_number() over(partition by pizza_category order by count(*) desc) rn
from pizza_sale
group by pizza_category,pizza_size
order by pizza_category,ordered desc
)
select pizza_category,
pizza_size,
ordered
from cte 
where rn=1;

-- Which pizza contributes the most to total revenue

select pizza_name,
sum(total_price) revenue,
round(sum(total_price)/(select sum(total_price) from pizza_sale)*100,2) percentage
from pizza_sale 
group by pizza_name
order by revenue desc;

-- Is there a trend in the types of pizzas ordered over time?

select _month_, 
pizza_category,
count(*) orders
from pizza_sale
group by _month_,pizza_category
order by pizza_category,_month_ ;

-- What is the trend in total revenue over time?

select _month_, 
round(sum(total_price),2) ordered
from pizza_sale
group by _month_
order by _month_ ;

-- What pizza combinations are commonly ordered together?

with cte as
(
select order_id,
pizza_name,
row_number() over(partition by order_id ORDER BY pizza_name) rn
from pizza_sale  
)
SELECT 
a.pizza_name AS pizza1,
b.pizza_name AS pizza2,
COUNT(*) AS ordered
FROM 
cte a
JOIN 
cte b
ON 
a.order_id = b.order_id
AND 
a.rn < b.rn
GROUP BY 
a.pizza_name, b.pizza_name
ORDER BY 
ordered DESC;

