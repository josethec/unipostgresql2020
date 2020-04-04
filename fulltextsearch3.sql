select title,idioma,busqueda from tv_series
	where busqueda @@ to_tsquery(idioma,'fantasìa')
	order by title
	

select 
	setweight(to_tsvector('english','This deparment delivers the actual prodcut to customers'),'A'),
	to_tsquery('english','product')
	
select title,idioma,setweight(to_tsvector(idioma,title),'A') from tv_series
	where to_tsvector(idioma,title) @@ to_tsquery(idioma,'Game')
	order by title

select 'Este texto es recordatorio de Búsqueda Completa de Texto'::tsvector @@ 'Búsqueda'::tsquery
select 'Este texto es recordatorio de Búsqueda Completa de Texto'::tsvector,'Búsqueda'::tsquery
union all
select to_tsvector('Este texto es recordatorio de Búsqueda Completa de Texto') , to_tsquery('Busqueda')

select to_tsvector('Este texto es recordatorio de Búsqueda Completa de Texto') @@ to_tsquery('busqueda')


select to_tsvector('Este texto es recordatorio de Búsqueda Completa de Texto') @@ to_tsquery('busqueda & texto')
select to_tsvector('Este texto es recordatorio de Búsqueda Completa de Texto') @@ to_tsquery('texto & busqueda')
select to_tsvector('Este texto es recordatorio de Búsqueda Completa de Texto') @@ to_tsquery('texto | busqueda')
select to_tsvector('Este texto es recordatorio de Búsqueda Completa de Texto') @@ to_tsquery('texto !busqueda')
select to_tsvector('Este texto es recordatorio de Búsqueda Completa de Texto') @@ to_tsquery('!busqueda')
select to_tsvector('Este texto es recordatorio de Búsqueda Completa de Texto') @@ to_tsquery('este<->texto')
select to_tsvector('Este texto es recordatorio de Búsqueda Completa de Texto') @@ to_tsquery('busqueda<->texto')
select to_tsvector('Este texto es recordatorio de Búsqueda Completa de Texto') @@ to_tsquery('(busqueda & google) | recordatorio ')

select * from tv_series
	where busqueda @@ to_tsquery(idioma,'(ficción | fiction) & television')


DANIEL BOJORGE
	(BOJORGE-BOGORGE-BOHORGE) & DANIEL
	LOPEZ - (CRISTOFER-CHRISTOFER-CHRISTOPHER)


select * from tv_series
	where busqueda @@ to_tsquery(idioma,'(television & fantasy) | (drama & histórico)')
	
select to_tsquery('(televisión & fantasía) | (drama & histórico)')

select to_tsquery('english','Fat | Rats:AB')

SELECT to_tsquery('''supernovae stars'' & !crab');

SELECT plainto_tsquery('english', 'The Fat Rats'); 

select websearch_to_tsquery('english','"supernove stars" -crab');--"'supernov' <-> 'star' & !'crab'"

select websearch_to_tsquery('english','"sad cat" or "fat rat"');--"'sad' <-> 'cat' | 'fat' <-> 'rat'"

SELECT websearch_to_tsquery('english', '""" )( dummy \\ query <->');

select title,ts_rank(busqueda,to_tsquery(idioma,'fantasy')) as clasificacion
from tv_series
where busqueda @@ to_tsquery(idioma,'fantasy')
order by 2 desc


update tv_series set idioma='english' where id  in (1,3,4);
update tv_series set idioma='spanish'  where id  in (5,6,7,8);

