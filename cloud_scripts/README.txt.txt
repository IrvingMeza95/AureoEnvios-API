#Script para otorgar permisos al archivo sh para reslapdar
chmod +x /root/DonWeb/AureoEnvios-API/cloud_scripts/Respaldo_local_db.sh
#Script para otorgar permisos al archivo sh para impportar
chmod +x /root/DonWeb/AureoEnvios-API/cloud_scripts/Importar_db.sh
#Ruta del archivo sh para respaldar base de datos
/root/DonWeb/AureoEnvios-API/cloud_scripts/Respaldo_local_db.sh
#Ruta del archivo sh para importaar base de datos
/root/DonWeb/AureoEnvios-API/cloud_scripts/Importar_db.sh
#Comando para eliminar todos los archivos de una carpeta
rm -r /root/DonWeb/Respaldos_db