select order_id, sum(amount) as total_amount
from air_orders
group by 1
having sum(amount) <= 0