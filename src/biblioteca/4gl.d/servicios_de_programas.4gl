#
# ============================================================================================================
# MODULO: servicios_de_programas.4gl
# EJECUTABLE: 
# DESCRIPCION: Funciones para ejecutar en cada programa
# AUTOR: Juan Salazar
# FECHA CREACION: 19/Abr/2026
# FECHA ULTIMA MODIFICACION: 19/Abr/2026
# ============================================================================================================
#
database control_erp
#
# ============================================================================================================
# FUNCION: gestionar_datos_sesion()
# OBJETIVO: Gestionar inicios de sesion en sistema
# AUTOR: Juan Salazar
# FECHA CREACION: 19/Abr/1016
# FECHA ULTIMA MODIFICACION: 19/Abr/2026
# ============================================================================================================
#
function gestionar_datos_sesion(usuario)

define
	usuario    like usuarios.usuario,   # Usuario
	id_sesion  like sesiones.id_sesion, # Sesion actual
	id_usuario like usuarios.id,        # ID usuario
	cmd        char(4800)               # Comando

initialize id_sesion, id_usuario, cmd to null

let id_sesion = fgl_getenv("RANDOM")
let id_usuario = obtener_id_usuario_t_usuarios(usuario)

-- PENDIENTE: Crear tabla sesiones, archivo de la tabla sesiones para lecturas e inserciones,
-- funcion para obtener informacion de sesion y auditorias de tablas

return true

end function
#
# ============================================================================================================
# FUNCION: desplegar_datos_referenciales_programa()
# OBJETIVO: Desplegar en pantalla los datos referenciales de programa
# AUTOR: Juan Salazar
# FECHA CREACION: 19/Abr/2026
# FECHA ULTIMA MODIFICACION: 19/Abr/2026
# ============================================================================================================
#
function desplegar_datos_referenciales_programa(programa, descripcion_programa)

define
	programa             char(40), # Programa
	descripcion_programa char(40), # Descripcion programa
	fecha                date      # Fecha actual

let descripcion_programa = centrar_texto(descripcion_programa, 40)
let fecha = today using "dd/mm/yyyy"

display descripcion_programa at 1, 20 attribute(reverse)
display "Fecha: ", fecha at 1, 63
display "Programa: ", programa at 2, 1

end function
#
# ============================================================================================================
# FUNCION: centrar_texto()
# OBJETIVO: Centrar texto dato
# AUTOR: Juan Salazar
# FECHA CREACION: 19/Abr/2026
# FECHA ULTIMA MODIFICACION: 19/Abr/2026
# ============================================================================================================
#
function centrar_texto(texto, longitud_texto)

define
	texto          char(100), # Texto a centrar
	longitud_texto smallint,  # Longitud del texto a centrar
	texto_centrado char(100)  # Texto centrado

initialize texto_centrado to null

return texto_centrado

end function
