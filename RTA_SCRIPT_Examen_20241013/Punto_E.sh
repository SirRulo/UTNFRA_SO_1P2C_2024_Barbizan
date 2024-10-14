#!/bin/bash

mkdir -p ../RTA_ARCHIVOS_Examen_20241013/

cd ../RTA_ARCHIVOS_Examen_20241013/

grep "MemTotal" /proc/meminfo > Filtro_Basico.txt

sudo dmidecode -t chassis | grep "Manufacturer" >> Filtro_Basico.txt
