#!/bin/bash

# 2.6 Fechas
echo -e "\n2.6 Fechas\n"

# Bash puede manejar valores de fecha y hora utilizando el comando `date`.

echo "Ejemplos de uso del comando 'date':\n"

# 1. Obtener la fecha y hora actual
fecha_actual=$(date +"%Y-%m-%d")
hora_actual=$(date +"%H:%M:%S")
echo "Fecha actual: $fecha_actual"
echo "Hora actual: $hora_actual"

# 2. Formatear la salida de la fecha
fecha_formateada=$(date +"%A, %d de %B de %Y")
echo "Fecha formateada: $fecha_formateada" # Ejemplo: "viernes, 28 de diciembre de 2024"

# 3. Convertir una fecha específica a un timestamp
fecha_especifica="2024-12-31"
timestamp=$(date -d "$fecha_especifica" +"%s")
echo "Timestamp para $fecha_especifica: $timestamp"

# 4. Convertir un timestamp a una fecha legible
timestamp_a_convertir=1735689600
fecha_legible=$(date -d "@$timestamp_a_convertir" +"%Y-%m-%d %H:%M:%S")
echo "Fecha legible para el timestamp $timestamp_a_convertir: $fecha_legible"

# 5. Sumar o restar tiempo
# Sumar 7 días a la fecha actual
fecha_futura=$(date -d "+7 days" +"%Y-%m-%d")
echo "Fecha dentro de 7 días: $fecha_futura"

# Restar 2 horas de la hora actual
hora_pasada=$(date -d "-2 hours" +"%H:%M:%S")
echo "Hora hace 2 horas: $hora_pasada"

# 6. Obtener la diferencia entre dos fechas
fecha1="2024-12-01"
fecha2="2024-12-28"
diferencia=$((($(date -d "$fecha2" +"%s") - $(date -d "$fecha1" +"%s")) / 86400))
echo "Diferencia entre $fecha1 y $fecha2: $diferencia días"

# 7. Validar una fecha
fecha_invalida="2024-02-30"
if date -d "$fecha_invalida" >/dev/null 2>&1; then
    echo "$fecha_invalida es válida"
else
    echo "$fecha_invalida no es válida"
fi

# 8. Obtener partes de una fecha
año=$(date +"%Y")
mes=$(date +"%m")
día=$(date +"%d")
echo "Año: $año, Mes: $mes, Día: $día"

# 9. Ejemplo de temporizador
echo "Iniciar temporizador (3 segundos)..."
sleep 3
echo "¡Temporizador terminado!"

# 10. Conversión de zonas horarias
hora_utc=$(date -u +"%Y-%m-%d %H:%M:%S")
hora_local=$(date +"%Y-%m-%d %H:%M:%S")
echo "Hora UTC: $hora_utc"
echo "Hora Local: $hora_local"

# Resumen:
# - Usa `date` para manipular y formatear fechas.
# - Convierte entre timestamps y fechas legibles.
# - Suma o resta tiempo fácilmente con `date -d`.
