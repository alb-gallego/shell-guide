# Bucle Select
echo "\n4.4 Bucles Select\n"

# El bucle select genera un menú interactivo basado en opciones

# while condición; do
#     >Comandos a ejecutar
# done

echo "Selecciona una opción:"
select opcion in "Opción 1" "Opción 2" "Salir"; do
    case $opcion in
    "Opción 1")
        echo "Seleccionaste Opción 1"
        ;;
    "Opción 2")
        echo "Seleccionaste Opción 2"
        ;;
    "Salir")
        echo "Adiós"
        break
        ;;
    *)
        echo "Opción no válida"
        ;;
    esac
done
