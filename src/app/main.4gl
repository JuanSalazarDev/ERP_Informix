#
# ============================================================================================================
# MODULO: main.4gl
# EJECUTABLE: app.4gi
# DESCRIPCION: Ejecucion aplicacion
# AUTOR: Juan Salazar
# FECHA CREACION: 27/Mar/2026
# FECHA ULTIMA MODIFICACION: 19/Abr/2026
# ============================================================================================================
#
database control_erp
globals

define
	usuario like usuarios.usuario # Usuario

end globals
#
# ============================================================================================================
# FUNCION: main()
# DESCRIPCION: Inicio ejecucion aplicacion
# AUTOR: Juan Salazar
# FECHA CREACION: 27/Mar/2026
# FECHA ULTIMA MODIFICACION: 19/Abr/2026
# ============================================================================================================
#
main

defer interrupt

initialize usuario to null

if solicitar_acceso() = false
	then
	exit program 1
end if

if gestionar_datos_sesion(usuario) = false
	then
	error "No fue posible gestionar sesion, contacte equipo soporte"
	exit program 1
end if

end main
