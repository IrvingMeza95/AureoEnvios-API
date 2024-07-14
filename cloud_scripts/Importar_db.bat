@echo off
REM Configuración de variables
set user=root
set host=localhost
set puerto=3306
set nombre_db_vacia=aureo_envios_db
set ruta_db_a_importar=C:\Users\iamf_\OneDrive\Desktop\Drive\Irving\Programacion\Proyectos\AureoEnvios\Respaldos_db\aureo_envios_db_20240714_164801.sql

REM Comando para importar la base de datos
mysql -h %host% -P %puerto% -u %user% -p %nombre_db_vacia% < "%ruta_db_a_importar%"