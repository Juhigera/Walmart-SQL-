-- product analysis
select * from walmart;

-- q1 Disttinct productlines
select count(distinct `product line`) from walmart;
-- 6

-- q2 most common payment method
select payment, count(*) as count
from walmart
group by 1
order by count desc;
-- Ewallet

-- q3 most selling product line
select `product line`, count(*) as count
from walmart
group by 1
order by count desc;
-- fashion accessories

-- q4 total revenue by month
select month_, sum(total) as Total_revenue
from walmart
group by  1
order by Total_revenue desc;
-- 1, 3, 2

-- q5 which productline generated highest revenue
select `product line` , sum(total) as Total_revenue
from walmart
group by 1
order by Total_revenue desc;
-- Food and beverages

-- q6 which month recorded highest COGS
select month_ , sum(cogs) as COGS
from walmart
group by 1
order by COGS desc;
-- 1

-- q7 which city has highest revenue
select city, sum(total) as total_revenue
from walmart
group by 1
order by total_revenue desc;
-- Naypyitaw

-- q8 which productline inncured highest VAT
select *  from walmart;

select `product line`, sum(`Tax 5%`) as VAT
from walmart
group by 1
order by VAT desc;
-- food and beverages

-- q9 categorize product_ine on sales good or bad based on average
with cte as (select `product line` , avg(cogs) as average
from walmart
group by 1)

select *, w.`product line`,
case when w.cogs>c.average then "good"
else "bad"
end as product_category
from walmart w
left join cte c
on w.`product line`=c.`product line`;

-- q10 Which branch sold more products than average product sold?
SELECT branch, SUM(quantity) AS quantity
FROM walmart GROUP BY branch HAVING SUM(quantity) > AVG(quantity) ORDER BY quantity DESC LIMIT 1;

-- q11 Most common productline by gender
select `product line`, gender, count(*) as cnt from walmart
group by 1,2
order by cnt desc;
SELECT gender, `product line`, COUNT(gender) total_count
FROM walmart GROUP BY 1,2 ORDER BY total_count DESC;


-- q12 average rating of each product line

select * from walmart;
select `product line`, avg(rating) as rating
from walmart
group by 1
order by rating desc;
-- food and beverages