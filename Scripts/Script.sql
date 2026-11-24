
-- Script para crear las bases de datos, triggers y index.
create table if not exists usuario (
	id serial primary key,
	nombre_usuario VARCHAR(30) not null,
	email VARCHAR(255) not null unique,
	contrasena_hash TEXT not null
);

create table if not exists informacion_personal_usuario (
	id serial primary key,
	nombre_completo VARCHAR(255) not null,
	cedula_identidad INTEGER not null unique,
	fecha_nacimiento date not null,
	id_usuario INTEGER not null unique,
	constraint fk_informacion_personal_usuario
		foreign key (id_usuario)
		references usuario (id)
		on delete cascade
);