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
	