#
# ============================================================================================================
# FUNCION: main()
# DESCRIPCION: Inicio ejecucion programa
# AUTOR: Juan Salazar
# FECHA CREACION: 21/Abr/2026
# FECHA ULTIMA MODIFICACION: 21/Abr/2026
# ============================================================================================================
#
database control_erp
main

defer interrupt

if solicitar_acceso() = false
        then
        exit program 1
end if

exit program 0

end main
