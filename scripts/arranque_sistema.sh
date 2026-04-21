#!/bin/bash

usuario=""

#
# ============================================================================================================
# Ejecutar login ERP
# ============================================================================================================
#
ejecutar_login(){

local archivo_usuario=/tmp/log_${$}_$(date '+%Y%m%d')

fglgo ./bin/login/login.4gi ${archivo_usuario}

if [[ $? -ne 0 ]]; then
	return 1
fi

usuario=$(cat ${archivo_usuario})
rm -rf ${archivo_usuario} 2> /dev/null

if [[ -z "${usuario}" ]]; then
	return 1
fi

return 0

}
#
# ============================================================================================================
# Inicio ejecucion script
# ============================================================================================================
#
if ! ejecutar_login; then
	exit 1
fi

if ! gestionar_sesiones
