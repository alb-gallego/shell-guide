#!/bin/zsh

# Las funciones son bloques de código reutilizables en Bash y Zsh que se definen una vez y se pueden invocar múltiples veces. Ambos intérpretes soportan funciones, pero tienen pequeñas diferencias en sintaxis, comportamiento y características avanzadas.

# Definición de funciones

# 1. Definición básica

# Bash y Zsh

# function nombre_funcion {
#   # Código
# }

# O, sin la palabra clave function:

# nombre_funcion() {
#   # Código
# }


# Ambos formatos son válidos en Bash y Zsh. Sin embargo, Zsh ofrece más características avanzadas para funciones.

# 2. Llamar a una función

# Después de definir una función, se invoca simplemente escribiendo su nombre:

# nombre_funcion

# Esto es igual en Bash y Zsh.

# 3. Pasar argumentos a funciones

# Los argumentos se acceden como en scripts, utilizando $1, $2, etc. Para acceder a todos los argumentos, se usa $@ o $*.

# Ejemplo:

mi_funcion() {
  echo "Primer argumento: $1"
  echo "Todos los argumentos: $@"
}

mi_funcion "Hola" "Mundo"

# Salida:

# Primer argumento: Hola
# Todos los argumentos: Hola Mundo

# Esto funciona de manera idéntica en Bash y Zsh.

# 4. Variables locales en funciones

# Bash y Zsh


# En Bash, usa local para declarar variables locales dentro de una función:

mi_funcion() {
  local var="Soy local"
  echo "$var"
}

mi_funcion

# Diferencias avanzadas entre Bash y Zsh

# 1. Retorno de valores

# En ambos intérpretes, las funciones pueden devolver códigos de estado con return. Sin embargo:

# Bash

mi_funcion() {
  local suma=$(( $1 + $2 ))
  echo "$suma"
  return 0
}
resultado=$(mi_funcion 5 10)
echo "Resultado: $resultado"

# Zsh

# Funciona igual, pero Zsh permite usar funciones autónomas como si fueran comandos integrados, gracias a su soporte avanzado para modularidad.

# 2. Ámbito de variables globales/locales

# En Zsh, las funciones tienden a tener un manejo más estricto de las variables locales que en Bash.

# Ejemplo en Zsh:

mi_funcion() {
  local var="Local"
  echo "Dentro de la función: $var"
}

mi_funcion
echo "Fuera de la función: ${var:-No definida}"

# Salida:

# Dentro de la función: Local
# Fuera de la función: No definida

# En Bash, si olvidaste declarar la variable como local, puede filtrarse al entorno global.

# 3. Funciones anónimas (solo Zsh)

# Zsh soporta funciones anónimas, que son funciones definidas sin nombre y usadas inmediatamente:

(){ echo "Soy una función anónima"; } 

# Esto no está disponible en Bash.

# 4. Parámetros de longitud fija y variable

# En Zsh, puedes usar argumentos posicionados para funciones con longitud fija o variable. Esto lo hace más robusto para manejar entradas:

mi_funcion() {
  echo "Primero: $1, Segundo: $2"
}
mi_funcion uno dos tres

# Zsh puede ignorar argumentos extra con opciones especiales.

# 5. Autocompletado avanzado en funciones (solo Zsh)

# Zsh permite definir autocompletado personalizado dentro de funciones, facilitando la experiencia del usuario en terminal:

# Función de ejemplo
mi_comando() {
  echo "Ejecutaste: $1"
}

# Definir completado
compdef '_files' mi_comando

# Esto es útil para comandos complejos.

# 6. Exportar funciones

# Ambos intérpretes permiten exportar funciones para que estén disponibles en subshells, pero usan sintaxis diferente:

# Bash y Zsh

mi_funcion() {
  echo "Soy una función exportada"
}
export -f mi_funcion

# Resumen de diferencias principales

# Característica	Bash	Zsh
# Sintaxis básica	function o nombre_funcion()	Igual que Bash
# Localidad de variables	local	local (más estricto)
# Funciones anónimas	No	Sí
# Autocompletado avanzado	No	Sí
# Exportar funciones	export -f	export -f
# Modularidad y reutilización	Limitada	Muy avanzada (como comandos)

