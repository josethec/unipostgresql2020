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


alter table pgweb 
add column idioma regconfig default('spanish');

alter table pgweb drop column busqueda2_es;

alter table pgweb
add column busqueda_es tsvector
generated always as (to_tsvector('spanish',coalesce('title','')|| ' '|| coalesce(body,''))) stored;


alter table pgweb
add column busqueda2_multi tsvector
generated always as (to_tsvector(idioma,coalesce('title','')|| ' '|| coalesce(body,''))) stored;


insert into pgweb(title,body,idioma) values
('Creation','This article teach how work with table','english'),
('Creation','This article teachs how work with table','spanish');

update pgweb set idioma='english' where id=12;
update pgweb set title='Create' where id=12;

select * from pgweb order by id desc;


select to_tsquery(idioma,'create & table'),busqueda2_multi from pgweb where 
busqueda2_multi @@ to_tsquery