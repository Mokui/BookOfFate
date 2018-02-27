# BookOfFate
bookoffate.com est un jeu dont vous êtes le héros

## Recommandation :


Vous devez installer une version de PHP supérieure ou égale à 5.6 ainsi qu'une version de CodeIgniter égale ou supérieure à 3.2.0-dev.
(Pour de plus amples informations allez voir [ici](https://github.com/Mokui/BookOfFate/blob/master/readme.rst) ).

Pour une bonne utilisation du jeu ainsi que pour son bon fonctionnement vous devez utiliser un serveur Apache PHP [Xampp](https://www.apachefriends.org/fr/download.html)
ou [Wamp](http://www.wampserver.com/en/download-wampserver-64bits/)  (en local).


## Utilisation en local


Pour pouvoir jouer à ce jeu vous devez tout d'abord :

#### Pour les utilisateurs de Wamp :


-Cloner ce dépôt dans sa dernière version dans le dossier:

> C:/wamp64/www

Ce dossier est le dossier ou est installé votre logiciel Wamp  avec une installation basique.
```         
git clone https://github.com/Mokui/BookOfFate.git
```

Vous devez lancer Wamp puis allez dans votre navigateur et taper l'adresse "localhost" ensuite dans l'onglet "Vos Projets" choissisez "BookOfFate" et le jeu démarre.
Vous devez aussi ajouter la base de données situées [ici](/application/config/bofdatabase.sql).

#### Pour les utilisateurs de Xampp :

-Cloner ce dépot dans sa dernière version dans le dossier : 

> C:/xampp/htdocs

Ce dossier est le dossier ou est installé votre logiciel Xampp avec une installation basique.
```         
git clone https://github.com/Mokui/BookOfFate.git
```

Vous devez aller sur le Xampp Control Panel. Configurer votre module Apache et MySQL puis lancer les dits modules.
Vous devez aussi ajouter la base de données situées [ici](/application/config/bofdatabase.sql)


## Utilisation en production

Actuellement le serveur en production est disponible à l'adresse suivante : [ici](https://pure-inlet-22307.herokuapp.com/).

Si vous souhaitez utiliser votre propre serveur Heroku commencer par : [ici](https://devcenter.heroku.com/articles/heroku-cli#download-and-install).
