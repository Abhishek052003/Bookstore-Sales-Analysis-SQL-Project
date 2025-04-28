--  6.Find customers who have purchased books from more than 3 different genres.

select c.customer_id, c.first_name, c.last_name, count(distinct b.genre) as Total_Types
from sales s
inner join customers c on c.customer_id=s.customer_id
inner join books b on b.book_id=s.book_id
group by c.customer_id
having Total_Types>3
order by Total_Types desc;