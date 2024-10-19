# Utilise une image officielle de PHP avec Apache
FROM php:8.0-apache

# Copie tout le contenu de ton répertoire dans le répertoire par défaut d'Apache
COPY . /var/www/html/

# Accorde les permissions nécessaires
RUN chown -R www-data:www-data /var/www/html/

# Expose le port 80
EXPOSE 80

# Démarre Apache
CMD ["apache2-foreground"]
