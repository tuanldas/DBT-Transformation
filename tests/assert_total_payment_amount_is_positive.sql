select order_id, sum(amount) as total_amount
from orders
group by 1
having sum(amount) <= 0