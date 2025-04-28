-- 14.Find the customers who have given reviews for more than 3 different books. Show their name and number of books reviewed.

select c.customer_id, c.first_name, count(distinct re.book_id)
from reviews re
inner join customers c on c.customer_id = re.customer_id
inner join books b on b.book_id = re.book_id
group by c.customer_id
having count(re.book_id) >=3;
