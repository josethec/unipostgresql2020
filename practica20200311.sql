SELECT c.customer_id as id ,  c.first_name nombres , c.last_name apellidos, c.email as correo_e, address as direccion1, address2 as direccion2,
district as distrito, ci.city as ciudad, p.country as pais,a.postal_code as "codigo postal"
	FROM public.customer c
	inner join address a on a.address_id=c.address_id
	inner join city ci on ci.city_id=a.city_id
	inner join country p on p.country_id=ci.country_id
	where c.active=1 order by pais, ciudad,nombres, apellidos
	--where c.customer_id=354