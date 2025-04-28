-- 11.Find the top 3 customers who have given the most reviews.

select c.first_name, c.last_name, count(re.rating_id) as Total_rating_given
from reviews re
inner join customers c on c.customer_id = re.customer_id
group by c.first_name, c.last_name
order by Total_rating_given desc
limit 3;
