# tp-docker
## Description de l'application : 

Cette application codée en Python permet de lancer un programme
via notre terminal.
Nous allons avoir besoin de créer deux images Docker afin d'accéder
à notre application.
Pour cela nous allons créer deux images conteuneurisé via notre application Docker.
La première correspond à l'application Python, et l'autre,
à sa base de données.


## Création des deux images de notre application :

1./ Création Dockerfile (app Python) :

Import de l'image officielle via DockerHub
Installation de la cms wget afin de mettre en place le connecteur MariaDB
Définition des variables d'environnement necessaires à la connection à la bdd
On définit le repertoire de travail et on copie la librairie dans le fichier requirement
Installation puis définition du port
Commande de lancement d'application

2./ Création db_Dockerfile :

Import de l'image mariadb
Définition du repertoire de travail
Copie du fichier SQL de creation de la bdd
Ouverture du port 3306
Définition des variables d'environnement pour la configuration de mariadb

Un run de l'application nous permettra quant à lui de tester le fonctionnement de notre application 
depuis le terminal en interactif.

## Docker Compose :
Cependant, la création du fichier docker-compose.yml nous permettant de monter nos deux images, suivant
les paramètres de configuration présents dans le fichier.

La commande docker compose up -d permet de lancer les containers en arrière plan contenant nos images.
Il est possible d'associer la commande docker-compose afin de démarrer, arreter, supprimer les containers.
L'application fonctionne parrallèlement à sa base de données.
Le docker-compose permet de lancer plusieurs containers simultanements.
