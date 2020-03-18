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

with cte_staff as (
select staff_id,count(rental_id) as conteo
from rental
group by staff_id
	)
select s.staff_id,s.first_name,s.last_name, cs.conteo from staff s
inner join cte_staff as cs on (s.staff_id=cs.staff_id)