-- 10.Find which book has the highest average rating, and what is that rating?

select b.title, round(avg(re.rating_id),0) as Average_rating
from reviews re
inner join books b on re.book_id = b.book_id
inner join ratings r on re.rating_id = r.rating_id
group by b.title
order by Average_rating desc;
