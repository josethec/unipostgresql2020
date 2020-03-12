---Primer inner join

SELECT c.customer_id, c.store_id, c.first_name, c.last_name, c.email, c.address_id,sum(p.amount) as amount
	FROM public.customer c
	inner join payment p on p.customer_id=c.customer_id
	
	group by c.customer_id, c.store_id, c.first_name, c.last_name, c.email, c.address_id