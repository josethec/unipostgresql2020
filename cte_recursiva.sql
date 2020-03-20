create table employees
(
	employee_id serial primary key,
	full_name varchar not null,
	manager_id int
)

insert into employees(
	employee_id,
	full_name,
	manager_id
)
values
(1,'David Armengol',null),
(2,'Carmen Tijerino',1),
(3,'Joseth Espinoza',2),
(4,'Martha Jarquin',2),
(5,'Daxel Janson',2),
(6,'Heydi Castro',5),
(7,'Luis Rodriguez',5),
(8,'Luis Flores',1),
(9,'Alex Lòpez',8)

with recursive subordinates as
(
	select 
		employee_id,
		manager_id,
		full_name
	from
		employees
	where employee_id=1
	union
		select
			e.employee_id,
			e.manager_id,
			e.full_name
		from
			employees e
		inner join subordinates s on s.employee_id=e.manager_id
) select * from subordinates;