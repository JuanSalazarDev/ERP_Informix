#!/bin/bash

PROGRAMA=$1

DBSRC=${PWD}/src/app:${PWD}/src/login:${PWD}/src/biblioteca:${PWD}/src/tablas:${DBSRC}
export DBSCR

fgldb ${PROGRAMA}
