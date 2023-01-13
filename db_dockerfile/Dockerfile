# Utilisez une image MariaDB officielle en tant que base
FROM mariadb

 

# Définissez l'emplacement du répertoire de travail dans l'image
WORKDIR /var/lib/mysql

 

# Copiez les fichiers de configuration de MariaDB dans le conteneur
# COPY my.cnf /etc/mysql/my.cnf


COPY create_structure.sql /docker-entrypoint-initdb.d/

 

# Exposez le port sur lequel MariaDB écoutera
EXPOSE 3306

 

# Définissez les variables d'environnement pour la configuration de MariaDB
ENV MARIADB_ROOT_PASSWORD=root_password
ENV MARIADB_DATABASE=mydatabase
ENV MARIADB_USER=myuser
ENV MARIADB_PASSWORD=mypassword

 

# Définissez l'instruction à exécuter lorsque le conteneur est démarré
#CMD ["mysqld"]
#ENTRYPOINT mariadb < /create_structure.sql
