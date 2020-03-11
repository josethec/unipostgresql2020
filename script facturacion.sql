--create database facturacion;

create table marca(
CodMarca serial primary key,
	descripcion varchar(200) not null
);


create table Producto(
CodProducto serial primary key,
	descripcion varchar(200) not null,
	CodMarca integer not null references marca(CodMarca)
);


create table FacturaEnc(
NoFactura serial primary key,
	fecha date not null
);

create table FacturaDet(
	NoDet serial primary key,
	NoFactura integer references FacturaEnc(NoFactura),
	CodProducto integer references Producto(CodProducto),
	Cantidad integer not null,
	Precio numeric(19,2) not null,
	Total numeric(19,2) 
);

create table cliente(
	idCliente serial primary key,
	nombres varchar(50),
	apellidos varchar(50),
	cedula varchar(14) not null unique,
	direccion varchar(200),
	telefono varchar(8)
);

alter table FacturaEnc add column idCliente integer references cliente(idCliente);
alter table FacturaEnc  alter column fecha  set default now()::date; 
alter table FacturaEnc alter column idCliente set not null;

alter table facturaenc add constraint fk_cliente foreign key(idCliente) references cliente(idCliente);

alter table facturaenc drop constraint facturaenc_idcliente_fkey;