#!/bin/bash

# Directorio donde están los archivos .sol
CONTRACTS_DIR="./contracts"

# Verifica que el directorio existe
if [ ! -d "$CONTRACTS_DIR" ]; then
    echo "Error: El directorio $CONTRACTS_DIR no existe."
    exit 1
fi

# Recorre cada archivo .sol en el directorio
for file in "$CONTRACTS_DIR"/*.sol; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")        # Nombre completo del archivo
        name_without_ext="${filename%.sol}" # Nombre sin la extensión .sol
        echo "Ejecutando docker_solcmc_all_solvers en $filename..."
        ./docker_solcmc_all_solvers contracts "$filename" "$name_without_ext" 60
    fi
done
