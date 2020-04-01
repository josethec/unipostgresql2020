select 'a fat cat sat on a mat and ate a fat'::tsvector @@ 'cat | rat'::tsquery;

select to_tsvector('fat cats ate fat rats') @@ to_tsquery('fat & rat');

select to_tsvector('fat cats ate fat rats') , to_tsquery('fat & rat');

select to_tsvector('fatal error') @@ to_tsquery('fatal <-> error');

select to_tsvector('error no es fatal') @@ to_tsquery('fatal <-> error');

select * from (
select 'error no es fatal' as t
	) as foo where t ilike '%error fatal%'
	
	select phraseto_tsquery('cats ate rats')
	
	
select to_tsvector('fatal error') @@ phraseto_tsquery('fatal error');

select to_tsvector('english','fat cats ate fat rats') @@ to_tsquery('fat & rat');


select to_tsvector('fat cats ate fat rats') , to_tsquery('fat & rat')
union all
select to_tsvector('english','fat cats ate fat rats') , to_tsquery('fat & rat');


select to_tsvector('fat cats ate fat rats') @@ to_tsquery('fat & rat') --no lo encuentra

select to_tsvector('english','fat cats ate fat rats') @@ to_tsquery('fat & rat');--si lo encuentra



