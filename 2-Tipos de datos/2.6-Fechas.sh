# 2.6 Fechas
echo "\n2.6 Fechas\n"

# Bash puede manejar valores de fecha y hora utilizando el comando date.
echo "Usos del comando 'date'\n"

echo "EJEMPLOS:\n"
echo "Obtener la fecha actual:"

fecha=$(date +"%Y-%m-%d")
hora=$(date +"%H:%M:%S")

echo "Fecha: $fecha, Hora: $hora\n"

echo "Convertir fechas a timestamps:\n"

timestamp=$(date -d "2024-12-31" +"%s")
echo "Timestamp: $timestamp"

# INDAGAR MAS
