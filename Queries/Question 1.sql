-- 1.Get the list of all books along with the customer's first and last name who purchased each book

select distinct b.title, c.first_name, c.last_name
from sales s
inner join books b on b.book_id=s.book_id
inner join customers c on c.customer_id=s.customer_id;