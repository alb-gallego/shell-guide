#!/bin/bash

# 3.6 - Operadores de archivos
# -e	El archivo o directorio existe	[ -e "archivo.txt" ]
# -f	Es un archivo regular	[ -f "archivo.txt" ]
# -d	Es un directorio	[ -d "directorio" ]
# -s	El archivo no está vacío	[ -s "archivo.txt" ]
# -r	Tiene permisos de lectura	[ -r "archivo.txt" ]
# -w	Tiene permisos de escritura	[ -w "archivo.txt" ]
# -x	Tiene permisos de ejecución	[ -x "archivo.sh" ]
# -h o -L	Es un enlace simbólico	[ -L "enlace" ]
# -p	Es un archivo de tipo FIFO o tubería con nombre	[ -p "fifo" ]
# -c	Es un archivo de dispositivo de carácter	[ -c "dispositivo" ]
# -b	Es un archivo de dispositivo de bloque	[ -b "dispositivo" ]
# -t	El descriptor de archivo está asociado a un terminal	[ -t 1 ]
echo -e "\n3.6 Operadores de archivos\n"
# INICIALIZACION DE DATOS DE PRUEBA
archivo="archivo.txt"
echo -e "Archivo de prueba" >"$archivo"

# Operador "-e"

echo -e "\nArchivo existe"
if [ -e "$archivo" ]; then
    echo -e "El archivo $archivo existe"
else
    echo -e "El archivo $archivo no existe"
fi

# Operador "-f"
# NOTA: Un archivo regular es un tipo de archivo estándar en los sistemas operativos tipo Unix/Linux. Es el tipo más común de archivo y representa cualquier archivo que no sea un directorio, enlace simbólico, dispositivo o archivo especial.

# Características principales de un archivo regular:

# 	1.	Contenido de datos:
# 	    Puede contener texto, binarios, imágenes, código fuente, ejecutables, etc.
# 	    Se usa para almacenar datos “normales” que se pueden leer o escribir.

# 	2.	No tiene propiedades especiales:
# 	    No es un directorio.
# 	    No es un enlace simbólico.
# 	    No es un archivo de dispositivo (como los que se encuentran en /dev).
# 	    No es una tubería o FIFO.

# EJEMPLO
# archivo.txt       -> Archivo regular
# script.sh         -> Archivo regular (ejecutable)
# directorio/       -> Directorio
# enlace_simbólico  -> Enlace simbólico que apunta a otro archivo

echo -e "\nArchivo es regular"
if [ -f "$archivo" ]; then
    echo -e "Es un archivo regular"
else
    echo -e "No es un archivo regular"
fi

echo -e "\nArchivo NO es regular"
archivoNr="archivo"
if [ -f "$archivoNr" ]; then
    echo -e "Es un archivo regular"
else
    echo -e "No es un archivo regular"
fi

#BORRAR DATOS DE PRUEBA
rm "$archivo"

# Operador "-d"
# INICIALIZACION DE DATOS DE PRUEBA
directorio="carpeta"
mkdir $directorio

echo -e "\nDirectorios"
if [ -d "$directorio" ]; then
    echo -e "El directorio $directorio existe"
else
    echo -e "El directorio $directorio no existe"
fi

#BORRAR DATOS DE PRUEBA
rm -r $directorio

if [ -d "$directorio" ]; then
    echo -e "El directorio $directorio existe"
else
    echo -e "El directorio $directorio no existe"
fi

# ==========================================
# 3.6.1 Operadores entre archivos
#  -nt	file1 es más reciente que file2	[ "file1" -nt "file2" ]
#  -ot	file1 es más antiguo que file2	[ "file1" -ot "file2" ]
#  -ef	Ambos archivos son el mismo (mismo inodo)	[ "file1" -ef "file2" ]
echo -e "\nOperadores entre archivos\n"

# INICIALIZACION DE DATOS DE PRUEBA
archivo1="archivo1.txt"
archivo2="archivo2.txt"
touch $archivo2
sleep 1
touch $archivo1

if [ $archivo1 -nt $archivo2 ]; then
    echo -e "\narchivo1.txt es más reciente que archivo2.txt"
fi

#BORRAR DATOS DE PRUEBA
rm $archivo1 && rm $archivo2

# INICIALIZACION DE DATOS DE PRUEBA
touch $archivo1
sleep 1
touch $archivo2

if [ $archivo1 -ot $archivo2 ]; then
    echo -e "\narchivo1.txt es más antiguo que archivo2.txt"
fi
#BORRAR DATOS DE PRUEBA
rm $archivo1 && rm $archivo2

# INICIALIZACION DE DATOS DE PRUEBA
touch $archivo1

ln "$archivo1" "$archivo2" # Crear enlace duro -> es como crear un puntero al archivo

if [ $archivo1 -ef $archivo2 ]; then
    echo -e "\nEstos archivos son el mismo, procesar solo uno"
fi
#BORRAR DATOS DE PRUEBA
rm $archivo1 && rm $archivo2
