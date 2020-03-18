SELECT  f.title as titulo, f.description as descripcion, f.release_year as lanzamiento,  f.rating, c.name as categoria, l.name as idioma
	FROM public.film f
	inner join film_category fc on fc.film_id=f.film_id
	inner join category c on c.category_id=fc.category_id
	inner join language l on l.language_id=f.language_id
	inner join film_actor fa on fa.film_id=f.film_id
	inner join actor a on a.actor_id= fa.actor_id
	where rating='R' AND rental_rate between 0.5 and 3.0
	and a.first_name ilike '%matthew%' and last_name ilike '%carrey%'
	
	
	
	SELECT  *
	FROM public.film f
	inner join film_category fc on fc.film_id=f.film_id
	inner join category c on c.category_id=fc.category_id
	inner join language l on l.language_id=f.language_id
	inner join film_actor fa on fa.film_id=f.film_id
	inner join actor a on a.actor_id= fa.actor_id
	where rating='R' AND rental_rate between 0.5 and 3.0
	and a.first_name ilike '%matthew%' and last_name ilike '%carrey%'
	
