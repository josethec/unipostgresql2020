CREATE TABLE public.instructores
(
    id serial not null primary key,
    nombres character varying(50) not null,
	cedula varchar(14) unique,
	constraint ck_nombre_no_jose CHECK (nombres<>'JOSE')
)