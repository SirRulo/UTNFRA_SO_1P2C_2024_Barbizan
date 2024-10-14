#!/bin/bash

IP_PUBLICA=$(curl -s ifconfig.me)

USUARIO=$(whoami)

HASH_USUARIO=$(openssl passwd -6 "$USUARIO")

URL_REPO=$(git config --get remote.origin.url)

mkdir -p ../RTA_ARCHIVOS_Examen_20241013/
cd ../RTA_ARCHIVOS_Examen_20241013/

echo "Mi IP Publica es: $IP_PUBLICA" > Filtro_Avanzado.txt
echo "Mi Usuario es: $USUARIO" >> Filtro_Avanzado.txt
echo "El Hash de mi Usuario es: $HASH_USUARIO" >> Filtro_Avanzado.txt
echo "La URL de mi repositorio es: $URL_REPO" >> Filtro_Avanzado.txt
