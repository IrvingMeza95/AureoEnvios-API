#!/bin/bash
# Configuración de variables
user="root"
host="vps-4110266-x.dattaweb.com"
puerto="3307"
nombre_db_vacia="aureo_envios_db"
ruta_db_a_importar="/root/DonWeb/Respaldos_db/aureo_envios_db_local_20240714_215339.sql"

# Comando para importar la base de datos
mysql -h "$host" -P "$puerto" -u "$user" -p "$nombre_db_vacia" < "$ruta_db_a_importar"
