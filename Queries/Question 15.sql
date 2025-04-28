-- 15.Find the top 3 authors whose books have generated the highest total revenue from sales.

select b.author, sum(s.quantity), sum(s.total_amount)
from sales s
inner join books b on s.book_id = b.book_id
group by b.author
order by sum(s.total_amount) desc
limit 3;