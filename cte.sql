select film_id, title, case when length<30 then 'Short'
							when length>50 then 'Medium'
							end as length
from film


select * from (
	select payment_date, count(amount) as grp
	from payment
	group by payment_date
) grupo where grupo.grp>1


with fecha_duplicada as (
	select payment_date, count(amount) as grp
	from payment
	group by payment_date
) 
select * from fecha_duplicada where fecha_duplicada.grp>1