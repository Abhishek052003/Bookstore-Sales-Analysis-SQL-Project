-- 3.Find out how many books each customer has purchased and the total amount spent by each customer.

select c.first_name, c.last_name, sum(s.quantity) as Total_book_purchased, sum(s.total_amount) as Total_amount_spent
from customers c
inner join sales s on c.customer_id=s.customer_id
group by c.first_name, c.last_name
order by Total_amount_spent desc;