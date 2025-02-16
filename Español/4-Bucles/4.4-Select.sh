#!/bin/bash

# Bucle Select
echo -e "\n4.4 Bucles Select\n"

# El bucle select genera un menú interactivo basado en opciones

# while condición; do
#     >Comandos a ejecutar
# done

echo -e "Selecciona una opción:"
select opcion in "Opción 1" "Opción 2" "Salir"; do
    case $opcion in
    "Opción 1")
        echo -e "Seleccionaste Opción 1"
        ;;
    "Opción 2")
        echo -e "Seleccionaste Opción 2"
        ;;
    "Salir")
        echo -e "Adiós"
        break
        ;;
    *)
        echo -e "Opción no válida"
        ;;
    esac
done
