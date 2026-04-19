#
# ============================================================================================================
# MODULO: main.4gl
# EJECUTABLE: app.4gi
# DESCRIPCION: Ejecucion aplicacion
# AUTOR: Juan Salazar
# FECHA CREACION: 27/Mar/2026
# FECHA ULTIMA MODIFICACION: 27/Mar/2026
# ============================================================================================================
#
database control_erp
#
# ============================================================================================================
# FUNCION: main()
# DESCRIPCION: Inicio ejecucion aplicacion
# AUTOR: Juan Salazar
# FECHA CREACION: 27/Mar/2026
# FECHA ULTIMA MODIFICACION: 27/Mar/2026
# ============================================================================================================
#
main

defer interrupt

if solicitar_acceso() = false
	then
	exit program 1
end if

end main
