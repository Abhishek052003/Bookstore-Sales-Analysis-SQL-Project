-- 8.Find which genre has generated the highest total revenue, and what is that amount?

select b.genre, sum(s.total_amount) as Total_revenue_by_genre
from sales s
inner join books b
on b.book_id = s.book_id
group by b.genre
order by Total_revenue_by_genre desc
limit 1;