-- Total Sales
select sum(sales)
from orders o 
-- Total sales for each years
select 
extract ('year' from order_date ) as years,
sum(sales)
from orders o
group by years 

-- Total sales for each city
select 
city,
sum(sales) as sum_sales
from orders o 
group by city
order by sum_sales desc


--Total profit
select 
sum(profit)
from orders o

-- Total profit for each year
select 
extract('year' from order_date) as years,
sum(profit) as profit,
sum(sales) as sales
from orders o 
group by years 
order by sum(profit) desc 

-- Total profit for each state
select 
state, 
sum(profit)
from orders o
group by state 
order by sum(profit) asc



--Profit Ratio
select 
extract('year' from order_date) as years,
cast((100-(sum(sales)-sum(profit))/sum(sales)*100) as numeric(21,16)) as profit_ratio
from orders o
group by years 


--Profit per Order
select 
distinct order_id as uniq_order,
sum(profit)
from orders o 
group by uniq_order
order by sum(profit) asc 






