USE retail_project;

SELECT * FROM project1st limit 15;

describe project1st;

select *
from project1st
where Sales IS NULL;

 select `Rowid` , count(*) as Duplicate_Count
from project1st
group by `Rowid`
having count(*) > 1;

select sum(Sales) as Total_Sales
from project1st;

select sum(Profit) as Total_Profit
from project1st;

select `Customer Name`,
sum(Sales) as Total_Sales
from project1st
group by `Customer Name`
order by Total_Sales DESC
limit 5;

select `Product Name`,
sum(Profit) as Profit
from project1st
group by `Product Name`
order by Profit DESC
limit 5;
 
 select avg(Sales) as `Avg Sales`
 from project1st;
 
 select month (STR_TO_DATE(`Order Date`,'%m/%d/%y')) as Month,
 sum(Sales) as` Total Sales`
 from project1st
 group by MONTH (STR_TO_DATE(`Order Date`,'%m/%d/%y'))
 order by month;
 

 