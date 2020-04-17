
create table marca
(
	id_marca serial primary key,
	descripcion varchar(50) unique not null
);

create index marca_idx on marca(id_marca);

CREATE TABLE producto
(
    id_producto serial primary key,
    descripcion varchar(50)  NOT NULL,
	id_marca bigint not null,
	codigo_barra varchar(128) unique not null,
	constraint fk_marca foreign key(id_marca) references marca(id_marca)
);

create index producto_idx on producto(id_producto,id_marca);

create table proveedor(
	id_proveedor serial primary key,
	nombres varchar(200) not null
);

create index proveedor_idx on proveedor(id_proveedor);

create table encabezado_compra(
	id_encab_compra serial primary key,
	fecha_compra date not null,
	id_proveedor bigint,
	fecha_entrega date not null,
	constraint fk_proveedor foreign key(id_proveedor) references proveedor(id_proveedor)
	
);

create index encabezado_compra_idx on encabezado_compra(id_encab_compra,id_proveedor,fecha_compra);

create table detalle_compra(
	id_detalle_compra serial primary key,
	id_encab_compra bigint,
	id_producto bigint,
	cantidad integer not null,
	precio_compra numeric(19,2),
	total numeric(19,2),
	constraint cn_total check(total>0),
	constraint fk_compra foreign key(id_encab_compra) references encabezado_compra(id_encab_compra),
	constraint fk_producto foreign key(id_producto) references producto(id_producto)
);

create index detalle_compra_idx on detalle_compra(id_detalle_compra,id_encab_compra,id_producto);


INSERT INTO public.marca( descripcion)
	VALUES ('Ideal'),
	 ('Corona'),
	 ('Mazorca');
	 
INSERT INTO public.proveedor(
	 nombres)
	VALUES ('Merconica'),
	('Chamorro S.A'),
	('Unilever');
	
INSERT INTO public.producto(
	descripcion, id_marca, codigo_barra)
	VALUES ('Aceite', 1, 'abc123'),
	('Aceite', 2, 'abc124'),
	('Aceite', 3, 'abc125');
	
INSERT INTO public.encabezado_compra(
	fecha_compra, id_proveedor, fecha_entrega)
	VALUES ('2020-04-01', 1, '2020-04-05'),
	('2020-04-05', 2, '2020-04-20'),
	('2020-04-15', 3, '2020-04-25');
	
INSERT INTO public.detalle_compra(
	id_encab_compra, id_producto, cantidad, precio_compra, total)
	VALUES (1, 1, 200, 2, 400 ),
	(2, 2, 300, 5, 1500 ),
	(3, 3, 350, 7, 2450 );