@echo off
setlocal enabledelayedexpansion

set user=root
set pw=sasa
set host=localhost
set port=3307

rem Obtener fecha y hora
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do (
    set anio=%%c
    set mes=%%b
    set dia=%%a
)
for /f "tokens=1-3 delims=:." %%a in ("%time%") do (
    set hora=%%a
    set minutos=%%b
    set segundos=%%c
)
if "%hora:~0,1%" == " " set hora=0%hora:~1,1%

rem Crear nombre de archivo
set nombre=aureo_envios_db_local_%anio%%mes%%dia%_%hora%%minutos%%segundos%.sql
set path="/root/DonWeb/Respaldos_db\%nombre%"

rem Ejecutar mysqldump y manejar errores
echo Haciendo respaldo de la base de datos...
mysqldump -h %host% --port=%port% -u %user% -p%pw% aureo_envios_db > %path%
if errorlevel 1 (
    echo Error: Fallo el respaldo de la base de datos.
) else (
    echo Respaldo completado exitosamente.
)

endlocal