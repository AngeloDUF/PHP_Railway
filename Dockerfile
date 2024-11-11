# Usa la imagen oficial de PHP con Apache
FROM php:7.4-apache

# Copia el archivo PHP al directorio raíz de Apache
COPY index.php /var/www/html/

# El puerto 80 ya está expuesto por Apache
