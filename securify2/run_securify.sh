#!/bin/bash

# Directorio donde están los archivos
SHARE_DIR="/home/jaime/Documentos/securify2/contracts"

# Verifica que el directorio existe
if [ ! -d "$SHARE_DIR" ]; then
    echo "Error: El directorio $SHARE_DIR no existe."
    exit 1
fi

# Recorre cada archivo en el directorio
for file in "$SHARE_DIR"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        echo "Ejecutando securify en $filename..."
        sudo docker run -it -v "$SHARE_DIR:/share" securify "/share/$filename"
    fi
done
