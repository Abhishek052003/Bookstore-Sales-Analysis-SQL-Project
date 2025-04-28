-- 5.find out which book genres are the most loved by customers — based on how many units were sold in each genre.

select b.genre, sum(s.quantity)
from books b
inner join sales s on b.book_id=s.book_id
group by b.genre
order by sum(s.quantity) desc;