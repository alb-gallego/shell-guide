# 2.5 Booleans (Simulación)
echo "\n2.5 Booleans\n"

echo "Bash no tiene un tipo booleano como tal, pero puedes simularlo utilizando:\n"
echo "- Números: 0 como falso, y 1 (o cualquier otro número) como verdadero."
echo "- Comandos de comparación: Devuelven 0 para verdadero y 1 para falso."

verdadero=0
falso=1

if [ $verdadero -eq 0 ]; then
    echo "Es verdadero"
fi
