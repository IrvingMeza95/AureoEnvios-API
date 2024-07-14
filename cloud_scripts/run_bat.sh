#!/bin/bash

user="root"
pw="sasa"
host="localhost"
port="3307"

# Obtener fecha y hora
anio=$(date +%Y)
mes=$(date +%m)
dia=$(date +%d)
hora=$(date +%H)
minutos=$(date +%M)
segundos=$(date +%S)

# Crear nombre de archivo
nombre="aureo_envios_db_local_${anio}${mes}${dia}_${hora}${minutos}${segundos}.sql"
path="/root/DonWeb/Respaldos_db/${nombre}"

# Ejecutar mysqldump y manejar errores
echo "Haciendo respaldo de la base de datos..."
if mysqldump -h $host --port=$port -u $user -p$pw aureo_envios_db > $path; then
    echo "Respaldo completado exitosamente."
else
    echo "Error: Fallo el respaldo de la base de datos."
fi