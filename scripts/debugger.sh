#!/bin/bash

PROGRAMA=$1

DBSRC=${PWD}/src/app:${PWD}/src/login/4gl.d:${PWD}/src/biblioteca/4gl.d:${PWD}/src/tablas:${DBSRC}
export DBSCR

fgldb ${PROGRAMA}
