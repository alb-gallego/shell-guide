# Para poder ejecutar un script de bash es siempre necesario que el sistema
# de permisos de ejecución a dicho script:
# Ejecutar el siguiente comando: "chmod +x mi_script.sh"

# Una vez se tienen permisos hay dos formas de ejecutar un script:
# - ./mi_script.sh
# - source mi_script.sh

# 01 - Elige el interprete de comandos que debe usar este script
# los mas famosos son bash(#!/bin/bash) y zsh(#!/bin/zsh)
# En este caso usaremos bash
#!/bin/bash

# 02 - Declarar variables
# Declarar y asignar
nombre="Mundo"
numero=42

[ 0 -eq 1 ]
last_value=$? # $? captura el estado de salida del último comando

# Usar variables
# Para usar variables hay que usar el simbolo "$"
echo "Valor leido $last_value"
echo "Hola, $nombre"
echo "El número es $numero"

#  03 -  Leer entrada del usuario
echo "¿Cómo te llamas?"
# Establecemos que variable almacenara el valor que introduzca el usuario
# Si la variable contiene un valor este se sobreescribira
read nombre
echo "Hola, $nombre, ¡bienvenido!"
