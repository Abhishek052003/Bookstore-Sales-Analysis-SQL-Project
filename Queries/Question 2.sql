-- 2.Get the total number of books sold for each book title, and the total revenue generated from each book.

select b.title, sum(s.quantity) as Total_number_sold, sum(s.total_amount) as Total_revenue_generated
from sales s
inner join books b on b.book_id=s.book_id
group by b.title
order by Total_revenue_generated desc;