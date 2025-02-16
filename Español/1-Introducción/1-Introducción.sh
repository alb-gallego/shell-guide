#!/bin/bash

# 1-Introducción
echo -e "\n1-Introducción\n"

# Para poder ejecutar un script de bash es siempre necesario que el sistema
# de permisos de ejecución a dicho script:
# Ejecutar el siguiente comando: "chmod +x mi_script.sh"

# Una vez se tienen permisos hay dos formas de ejecutar un script:
# - ./mi_script.sh
# - source mi_script.sh

# 1. Interpretes de comandos
#  Elige el interprete de comandos que debe usar este script
# los mas famosos son bash(#!/usr/bin/env bash) y zsh(#!/usr/bin/env zsh)
# En este caso usaremos bash para la mayoria de ejemplos
#!/usr/bin/env bash

# Tambien se puede usar #!/bin/zsh o #!/bin/bash al principio del script

# 2. Declarar y usar variables

# Declarar y asignar
nombre="Mundo"
numero=42

[ 0 -eq 1 ]
last_value=$? # $? captura el estado de salida del último comando

# Usar variables
# Para usar variables hay que usar el simbolo "$"
echo -e "Valor leido $last_value"
echo -e "Hola, $nombre"
echo -e "El número es $numero"

#  03 -  Leer entrada del usuario
echo -e "\n¿Cómo te llamas?"
# Establecemos que variable almacenara el valor que introduzca el usuario
# Si la variable contiene un valor este se sobreescribira
read nombre
echo -e "\nHola, $nombre, ¡bienvenido!"
