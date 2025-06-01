--step1:- Find the total sales per customer
with cte_totalsales as(
select customerid,
	sum(sales) as total_sales 
	from sales.orders
	group by CustomerID),

--step2:- Find the last order date per customer
cte_last_order as(
select 
	max(orderdate)as last_order,
	CustomerID
	from sales.Orders
	group by customerid),

--step3:- Rank Customers based on total sales per customer
cte_rank_customers as(
select *,
	row_number()over(order by total_Sales)rank1
	from cte_totalsales),

--step4:- Segment customers based on their total sales
cte_segment as(
select
	CustomerID,
	total_sales,
	case when total_sales >100 then 'high'
	 when total_sales >80 then 'medium'
	else 'low'
	end as customer_segment
	from  cte_totalsales )

--step5:- MAIN QUERY
select 
c.CustomerID,
firstname,
lastname,
cte.total_sales,
cte_last.last_order,
cte_rank.rank1,
seg.customer_segment
from sales.Customers c
left join cte_totalsales cte
on c.CustomerID=cte.CustomerID
left join cte_last_order cte_last
on c.CustomerID=cte_last.CustomerID
left join cte_rank_customers as cte_rank
on c.CustomerID=cte_rank.CustomerID
left join cte_segment as seg
on c.CustomerID=seg.CustomerID
