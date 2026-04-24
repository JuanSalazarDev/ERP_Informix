#
# ============================================================================================================
# MODULO: main.4gl
# EJECUTABLE: app.4gi
# DESCRIPCION: Ejecucion aplicacion
# AUTOR: Juan Salazar
# FECHA CREACION: 27/Mar/2026
# FECHA ULTIMA MODIFICACION: 22/Abr/2026
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
# FECHA ULTIMA MODIFICACION: 22/Abr/2026
# ============================================================================================================
#
main

defer interrupt

let usuario = arg_val(1)

end main
