-- 9. Find which customer has purchased the highest number of books in a single day, and how many books did they buy?

select c.customer_id, c.first_name, c.last_name, s.sale_date, sum(s.quantity) as Total_books_purchased
from sales s
inner join customers c
on s.customer_id = c.customer_id
group by s.sale_date, c.customer_id
order by Total_books_purchased desc
limit 1;