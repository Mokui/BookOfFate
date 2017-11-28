# BookOfFate
bookoffate.com est un jeu dont vous êtes le héros

## Une histoire dont vous êtes le héros
### Schéma d'architecture avec interactions utilisateur :
#### V1 :
créer le jeu de façon solo incluant une base de données minimal afin de tester la viabilité du projet.
Commencer l’aspect solo le plus simplement possible puis l’adapter à un scénario plus long
Jeu à réponses rapide types QCM avec embranchement dans chaque scénario. Les joueurs obtiennent au début, après le choix de leur scénario, un rôle (guerrier, mage, roublard etc…). Rôle qui permettra d’obtenir des embranchements différents. Le but du jeu est de terminer le scénario avec un personnage en vie.

#### V2 :
compliquer le jeu en rajoutant des scénarios plus longs avec une IA plus perfectible.
Créé des tirages aléatoires lors des embranchements pour que le joueur ne connaisse pas le chemin le plus rapide
Dans les malchances/chances cela sera aléatoire à chaque partie pour que tous les joueurs soit au même niveau
Joueur avec un choix de classes ? (Mage, guerrier, …), ce qui résulterait avec plusieurs solutions possibles en fonction de la classe :
•	Si le joueur est un mage il peut par exemple léviter pour franchir un obstacle alors qu’un guerrier devra essayer de l’escalader
En alternative aux classes, le joueur définit ses attributs (force, endurance, mental, magie) qui lui permettront de pouvoir augmenter ou réduire ses chances de réussite lors de ses lancer de dés lorsqu’une action (manipuler un objet, faire un saut précis, lancer un sort) requiers un jet d’un attribut particulier

#### V3 :
intégrer une composante multijoueur, jusqu’à 3 joueurs avec une course à la victoire. 
Avec la gestion de GIT, création de deux branches : une branche préprod fonctionnant H24 et une branche test, tentatives dans laquelle on peut tester des fonctionnalités non définitives.

Système de salon où les joueurs choisissent leur scénario, dès que le nombre de joueurs est atteint le scénario démarre.
Idée : Chaque rôle propose une quête différente au niveau du scénario en plus de la quête principale. Ce qui poussera les joueurs à l’accomplir sans quoi ils auront un malus/ impossibilité de réussir correctement le scénario.
