-- 12.Find the top 5 books that have generated the highest total revenue per unit sold.

select b.title as Book_title, sum(s.quantity) as Total_quantity_sold, sum(s.total_amount) as Total_revenue_generated, round(b.price, 0) as Actual_price,
round(sum(s.total_amount)/ sum(s.quantity), 0) as Average_revenue_generated
from books b
inner join sales s on s.book_id = b.book_id
group by b.title
order by Average_revenue_generated desc
limit 5;