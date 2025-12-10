-- Customer Analysis
select * from walmart;

-- How many unique customer types does the data have?
select count(distinct `customer type`) from walmart;
-- 2

-- How many unique payment methods does the data have?
select count(distinct payment) from walmart;

-- Which is the most common customer type?
select `customer type`, count(*) as cnt
from walmart
group by 1;
-- Member

select * from walmart;

-- Which customer type buys the most?
select `customer type`, sum(quantity) as Quantity_purchased
from walmart
group by 1;

-- What is the gender of most of the customers?
select gender, count(*) as cnt
from walmart
group by 1;


-- What is the gender distribution per branch?
select gender, 
sum(case when branch="A" then 1 else 0 end) as A,
sum(case when branch="B" then 1 else 0 end) as B,
sum(case when branch="C" then 1 else 0 end) as C
from walmart
group by 1;

-- Which time of the day do customers give most ratings?
select time_of_day, count(rating) from walmart
group by 1;

-- Which time of the day do customers give most ratings per branch?
select time_of_day, 
sum(case when branch="A" then 1 else 0 end) as A,
sum(case when branch="B" then 1 else 0 end) as B,
sum(case when branch="C" then 1 else 0 end) as C
from walmart
group by 1;

-- Which day of the week has the best avg ratings?
select day_name, avg(rating) as avg from walmart
group by 1
order by avg desc;

-- Which day of the week has the best average ratings per branch?
WITH avg_ratings AS (
  SELECT 
      branch,
      day_name,
      AVG(rating) AS average,
      ROW_NUMBER() OVER (PARTITION BY branch ORDER BY AVG(rating) DESC) AS rn
  FROM walmart
  GROUP BY branch, day_name
)
SELECT branch, day_name, average
FROM avg_ratings
WHERE rn = 1;