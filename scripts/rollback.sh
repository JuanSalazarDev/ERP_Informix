#!/bin/bash

dbaccess <<!
database control_erp
;
drop table usuarios
;
drop table claves_usuarios
;
!

dbaccess <<!
drop database control_erp
;
!
