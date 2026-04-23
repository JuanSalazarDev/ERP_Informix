#!/bin/bash

dbaccess <<!
database control_erp
;
drop table usuarios
;
drop table claves_usuarios
;
drop table sesiones
;
!

dbaccess <<!
drop database control_erp
;
!
