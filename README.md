# BookOfFate
bookoffate.com est un jeu dont vous êtes le héros

## Une histoire dont vous êtes le héros
### Schéma d'architecture avec interactions utilisateur :
#### V1 :
créer le jeu de façon solo incluant une base de données minimale afin de tester la viabilité du projet.
Commencer l’aspect solo le plus simplement possible puis l’adapter à un scénario plus long
Jeu à réponses rapides types QCM avec embranchement dans chaque scénario. Les joueurs obtiennent au début, après le choix de leur scénario, un rôle (guerrier, mage, roublard etc…). Rôle qui permettra d’obtenir des embranchements différents. Le but du jeu est de terminer le scénario avec un personnage en vie.

#### V2 :
compliquer le jeu en rajoutant des scénarios plus longs avec une IA plus perfectible.
Créé des tirages aléatoires lors des embranchements pour que le joueur ne connaisse pas le chemin le plus rapide
Dans les malchances/chances cela sera aléatoire à chaque partie pour que tous les joueurs soient au même niveau
Joueur avec un choix de classes ? (Mage, guerrier, …), ce qui résulterait de plusieurs solutions possibles en fonction de la classe :
Si le joueur est un mage il peut par exemple léviter pour franchir un obstacle alors qu’un guerrier devra essayer de l’escalader
En alternative aux classes, le joueur définit ses attributs (force, endurance, mental, magie) qui lui permettront de pouvoir augmenter ou réduire ses chances de réussite lors de ses lancers de dés lorsqu’une action (manipuler un objet, faire un saut précis, lancer un sort) requiers un jet d’un attribut particulier

#### V3 :
intégrer une composante multijoueur, jusqu’à 3 joueurs avec une course à la victoire.
Avec la gestion de GIT, création de deux branches : une branche préproduction fonctionnant H24 et une branche test, tentatives dans laquelle on peut tester des fonctionnalités non définitives.

Système de salon où les joueurs choisissent leur scénario, dès que le nombre de joueurs est atteint le scénario démarré.
Idée : Chaque rôle propose une quête différente au niveau du scénario en plus de la quête principale. Ce qui poussera les joueurs à l’accomplir sans quoi ils auront un malus/ impossibilité de réussir correctement le scénario.

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
```         
git clone https://github.com/Mokui/BookOfFate.git
```


Vous devez lancer Wamp puis allez dans votre navigateur et taper l'adresse "localhost" ensuite dans l'onglet "Vos Projets" choissisez "BookOfFate" et le jeu démarre.
Vous devez aussi ajouter la base de données situées [ici](/application/config/bofdatabase.sql).

#### Pour les utilisateurs de Xampp :

-Cloner ce dépot dans sa dernière version dans le dossier : 

> C:/xampp/htdocs
```         
git clone https://github.com/Mokui/BookOfFate.git
```

Vous devez aller sur le Xampp Control Panel. Configurer votre module Apache et MySQL puis lancer les dits modules.
Vous devez aussi ajouter la base de données situées [ici](/application/config/bofdatabase.sql)


## Utilisation en production

Actuellement le serveur en production est disponible à l'adresse suivante : [ici](https://pure-inlet-22307.herokuapp.com/).

Si vous souhaitez utiliser votre propre serveur Heroku commencer par : [ici](https://devcenter.heroku.com/articles/heroku-cli#download-and-install).
