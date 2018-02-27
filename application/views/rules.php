<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<title>Les règles</title>
	<link rel="stylesheet" href="<?php echo base_url('assets/css/rules.css')?>"/>
</head>
<header>

</header>
<body>
	<div id="container">
		<h1>
			Bienvenue sur la page de règles de Book of Fate!
		</h1>

		<p>
		Quels sont les grandes lignes du projet ?
		<br>
		<br>
		Le but est de faire une version web d’un jeu de rôle de papier type « le livre dont vous êtes le héros ». 
		Après que le joueur ait choisi son scénario, le jeu lui proposera divers embranchements (dont certains seront aléatoires) pour une aventure personnalisée. 
		Le joueur pourra avancer tout au long de l’histoire en faisant des choix menant à des conséquences
		tel que rentrer dans une forêt en espérant trouver un raccourci ou bien contourner l’obstacle au risque de perdre du temps et de se dérouter de son objectif ;
		il affrontera également des adversaires redoutables tout au long de son aventure.
		Le site web est actuellement dans une version 1.0, les mécaniques de jeu et l'aspect graphique sont destinés à évoluer.
		</p>
		<p class="footer">Vitesse de chargement: <strong>{elapsed_time}</strong> seconds.</p>
	</div>
	<li class="listeNav"><a title="retour à l'accueil" href="<?php echo base_url();?>index.php/Controller_Accueil/index">Retour</a></li>
</body>
</html>
