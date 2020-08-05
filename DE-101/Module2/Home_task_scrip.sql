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
sum(profit)
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




