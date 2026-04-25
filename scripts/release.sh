#!/bin/bash

dbaccess <<!
create database control_erp
;
database control_erp
;
create table usuarios(
        id         serial not null primary key,
        usuario    char(38) not null,
	nombre     char(38),
	email      char(40),
	fecha_alta date
)
;
create index idx_1_usuarios on usuarios (usuario)
;
create table claves_usuarios(
	id_usuario decimal(8,0) not null primary key,
	salt       char(65),
	clave      char(65)
)
;
create table sesiones(
	id_usuario decimal(8,0) not null primary key,
	pid        decimal(14,0) not null,
	fecha      datetime year to second not null
)
;
!

dbaccess <<!
database control_erp
;
insert into usuarios values (1, "admin", "", "", today)
;
insert into claves_usuarios values (1, "", "")
;
!
