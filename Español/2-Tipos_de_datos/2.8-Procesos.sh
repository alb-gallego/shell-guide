#!/bin/bash

# 2.8  Procesos
echo "\n2.8 Procesos\n"

echo "Bash maneja procesos como identificadores numéricos (PIDs), que se pueden utilizar para gestionar y controlar procesos en segundo plano.\n"

# EJEMPLO
sleep 10 & # Ejecuta el comando en segundo plano
pid=$!     # Obtiene el PID del último proceso en background
echo "PID: $pid"
kill $pid # Finaliza el proceso

# 2.8.1 Descriptores de archivo
echo "\n2.8.1 Descriptores de archivo\n"

echo "Bash utiliza descriptores de archivo para redirigir entrada/salida:
	- 0: Entrada estándar (stdin)
	- 1: Salida estándar (stdout)
	- 2: Error estándar (stderr)"
