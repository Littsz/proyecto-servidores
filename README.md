# Proyecto NexoComercial: infraestructura virtualizada

Laboratorio de administración de servidores (UT Aguascalientes).

## Integrantes y roles
| Integrante | VM | Servicios |
| --- | --- | --- |
| Israel Rodríguez | SRV-CORE | Usuarios, Samba, CUPS, cron 
| Pedro Ivan Rodriguez Cornejo | SRV-DB | MariaDB, respaldo y restauración |
| Yathziri De Jesus Marquez Chavez | SRV-WEB | Apache, host virtual, análisis de correo |

## Estructura
- docs/: arquitectura, informe, matriz de seguridad, plan de respaldo
- configs/: configuraciones por servicio (sin secretos)
- database/: schema.sql, seed.sql, pruebas.sql
- scripts/: backup.sh y diagnostico.sh
- tests/: plan de pruebas y resultados
- evidence/: capturas numeradas por área

## Reproducir
1. Crear las tres VM con Ubuntu Server y red puenteada.
2. Seguir la guía de cada VM y usar los archivos de configs/, database/ y scripts/.

## Seguridad
Sin contraseñas ni claves en el repositorio. Las credenciales de laboratorio viven fuera de Git.
