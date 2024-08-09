# Inception

## Description
Le projet **Inception** fait partie du cursus de l'école 42. Il a pour but de vous initier à la virtualisation en utilisant Docker. Vous devrez créer un ensemble de conteneurs pour héberger différents services, en appliquant les bonnes pratiques de sécurité et d'automatisation.

## Objectifs
- **Compréhension des concepts de virtualisation** : Apprenez à utiliser Docker pour isoler vos services dans des conteneurs légers et modulaires.
- **Mise en place d’une architecture multi-conteneurs** : Créez une infrastructure composée de plusieurs services qui communiquent entre eux via des réseaux définis.
- **Sécurisation des services** : Appliquez des mesures de sécurité pour protéger vos services et leur environnement.
- **Automatisation et orchestration** : Utilisez `docker-compose` pour gérer et orchestrer vos conteneurs facilement.

## Prérequis
Avant de commencer ce projet, vous devez avoir une bonne compréhension des concepts suivants :
- Systèmes d’exploitation Unix/Linux
- Réseaux informatiques de base
- Commandes Shell
- Docker et Docker Compose

## Structure du Projet
Vous devrez mettre en place les éléments suivants dans des conteneurs distincts :

1. **NGINX** - Serveur web qui agira également comme reverse proxy.
2. **WordPress** - Site web dynamique qui s'appuie sur une base de données.
3. **MariaDB** - Base de données relationnelle utilisée par WordPress.
4. **PHP-FPM** - Pour traiter les scripts PHP utilisés par WordPress.
5. **Redis** - Optionnel : Service de cache pour optimiser les performances de votre application.

## Étapes de Réalisation

1. **Installation de Docker** : Installez Docker et Docker Compose sur votre machine.
2. **Configuration des Conteneurs** : Créez des fichiers `Dockerfile` pour chaque service, et un fichier `docker-compose.yml` pour orchestrer ces conteneurs.
3. **Réseautage** : Configurez des réseaux Docker pour permettre la communication sécurisée entre vos conteneurs.
4. **Volumes** : Utilisez des volumes pour persister les données de la base de données et de WordPress.
5. **Sécurisation** : Assurez-vous que vos services sont sécurisés (certificats SSL pour NGINX, mots de passe sécurisés pour MariaDB, etc.).
6. **Test et Déploiement** : Testez vos conteneurs localement avant de les déployer sur un serveur (si applicable).

## Commandes Utiles

- **Démarrer les conteneurs** : `docker-compose up -d`
- **Arrêter les conteneurs** : `docker-compose down`
- **Afficher les logs** : `docker-compose logs`
- **Accéder à un conteneur** : `docker exec -it <nom_du_conteneur> /bin/sh`

## Documentation
- [Documentation Docker](https://docs.docker.com/)
- [Documentation Docker Compose](https://docs.docker.com/compose/)
- [NGINX](https://www.nginx.com/resources/wiki/)
- [MariaDB](https://mariadb.org/)
- [WordPress](https://wordpress.org/support/article/how-to-install-wordpress/)
- [PHP-FPM](https://www.php.net/manual/en/install.fpm.php)

