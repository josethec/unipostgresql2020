select cfgname from pg_catalog.pg_ts_config;

create table pgweb(
	id serial not null primary key,
	title varchar(50) not null,
	body text
);

insert into pgweb(title,body)
values
('Titulo 1','Mis vecinos son como amig
 os'),
('Titulo 2','Viaje al Centro de la Tierra'),
('Titulo 3','Un amigo es como un hermano');
('Titulo 4','El perro es el mejor amigo del hombre y el hombre no es amigo de los murcielagos');

insert into pgweb(title,body)
values('Titulo 4','El perro es el mejor amigo del hombre y el hombre no es amigo de los murcielagos');

select *
from pgweb
where to_tsvector('english',body) @@ to_tsquery('english','amigo');


select to_tsvector('english',body),to_tsquery('english','amigo'),body,'Ingles'
from pgweb
union all
select to_tsvector(body),to_tsquery('amigo'),body,'Español'
from pgweb