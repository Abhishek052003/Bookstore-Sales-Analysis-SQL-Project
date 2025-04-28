-- 4.Find the list of books that have never been purchased by any customer.

Select b.title
from books b 
left join sales s on b.book_id=s.book_id
where s.sale_id is null;
