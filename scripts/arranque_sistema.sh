#!/bin/bash

#fecha=$(date '+%Y%m%d')
archivo_usuario=/tmp/log_${$}_$(date '+%Y%m%d')

fglgo ./bin/login/login.4gi ${archivo_usuario}

if [[ $? -ne 0 ]]; then
	echo "Error al ingresar"
	exit 1
fi

usuario=$(cat ${archivo_usuario})

rm -rf ${archivo_usuario}
