#!/bin/bash

# Generar archivos .4go
find . -type f -name "*.4gl" | xargs -I {} fglpc {}

# Generar archivos .frm
find . -type f -name "*.per" | xargs -I {} form4gl {}

mv servicios_de_claves.4go bin/biblioteca/4go.d
mv login.4go bin/login/4go.d
mv main_login.4go bin/login/4go.d
mv claves_usuarios.4go bin/tablas
mv usuarios.4go bin/tablas
mv src/login/per.d/login.frm bin/login/frm.d
mv src/biblioteca/per.d/cambiar_clave.frm bin/biblioteca/frm.d

cat bin/login/4go.d/login.4go bin/login/4go.d/main_login.4go bin/biblioteca/4go.d/servicios_de_claves.4go \
	bin/tablas/claves_usuarios.4go bin/tablas/usuarios.4go > bin/login/login.4gi
