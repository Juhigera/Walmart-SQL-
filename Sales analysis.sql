-- Sales analysis

-- Number of sales made in each time of the day per weekday
select * FROM Walmart;
select day_name, time_of_day, count(*) as cnt
from walmart
group by 1,2;

select day_name, 
sum(case when time_of_day="Morning" then 1 else 0 end) as Morning,
sum(case when time_of_day="Afternoon" then 1 else 0 end) as Afternoon,
sum(case when time_of_day="Evening" then 1 else 0 end) as Evening
from walmart
Group by 1;

-- Identify the customer type that generates the highest revenue.

select `customer type`, sum(total) as revenue
from walmart
group by 1
order by revenue desc;
-- Member

-- Which city has the largest tax percent/ VAT (Value Added Tax)?
select city, sum(`Tax 5%`) as VAT
from walmart
group by 1
order by VAT desc;
-- Naypyitaw

-- Which customer type pays the most VAT?
select `customer type`, sum(`Tax 5%`) as VAT
from walmart
group by 1;
-- Member