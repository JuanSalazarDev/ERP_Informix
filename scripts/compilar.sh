#!/bin/bash

# Generar archivos .4go
find . -type f -name "*.4gl" | xargs -I {} fglpc {}

# Generar archivos .frm
find . -type f -name "*.per" | xargs -I {} form4gl {}

mv main.4go bin/app
mv servicios_de_claves.4go bin/biblioteca
mv login.4go bin/login
mv claves_usuarios.4go bin/tablas
mv usuarios.4go bin/tablas
mv src/login/login.frm bin/login
mv src/biblioteca/cambiar_clave.frm bin/biblioteca

cat bin/app/main.4go bin/biblioteca/servicios_de_claves.4go bin/login/login.4go bin/tablas/claves_usuarios.4go \
	bin/tablas/usuarios.4go > app.4gi
