-- 7.Find Which books have never been purchased, and who are their authors?

select b.title, b.author
from books b
left join sales s
on b.book_id= s.book_id
where s.sale_id is null;