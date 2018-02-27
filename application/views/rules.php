<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<title>Les règles</title>
	<style type="text/css">

::selection { background-color: #f07746; color: #fff; }
	::-moz-selection { background-color: #f07746; color: #fff; }

	img {
		display:block;
		margin-left: auto;
		margin-right: auto;
		width: 50%;
	}

	body {
		background-color: #fff;
		margin: 40px auto;
		font: 16px/24px normal "Helvetica Neue",Helvetica,Arial,sans-serif;
		color: #808080;
	}

	a {
		color: #dd4814;
		background-color: transparent;
		font-weight: normal;
		text-decoration: none;
	}

	a:hover {
	   color: #97310e;
	}

	h1 {
		color: #fff;
		background-color: #dd4814;
		border-bottom: 1px solid #d0d0d0;
		font-size: 22px;
		font-weight: bold;
		margin: 0 0 14px 0;
		padding: 5px 10px;
		line-height: 40px;
	}

	h2 {
		color:#404040;
		margin:0;
		padding:0 0 10px 0;
	}

	code {
		font-family: Consolas, Monaco, Courier New, Courier, monospace;
		font-size: 13px;
		background-color: #f5f5f5;
		border: 1px solid #e3e3e3;
		border-radius: 4px;
		color: #002166;
		display: block;
		margin: 14px 0 14px 0;
		padding: 12px 10px 12px 10px;
	}

	#body {
		margin: 0 15px 0 15px;
		min-height: 96px;
	}

	p.footer {
		text-align: right;
		font-size: 12px;
		border-top: 1px solid #d0d0d0;
		line-height: 32px;
		padding: 0 10px 0 10px;
		margin: 20px 0 0 0;
		background:#8ba9aa;
		color:#fff;
	}

	#container {
		margin: 10px;
		border: 1px solid #d0d0d0;
		box-shadow: 0 0 8px #d0d0d0;
		border-radius: 4px;
	}
	
	p {
		 margin: 0 0 10px;
		 padding:0;
	}
	</style>
</head>
<body>
	<div id="container">
		<h1>
			Bienvenue sur la page de règles de Book of Fate!
		</h1>

		<p>
		<strong>Quels sont les grandes lignes du projet ? </strong>
		<br>
		Le but est de faire une version web d’un jeu de rôle de papier type « le livre dont vous êtes le héros ». 
		Après que le joueur ait choisi son scénario, le jeu lui proposera divers embranchements (dont certains seront aléatoires) pour une aventure personnalisée. 
		Le joueur pourra avancer tout au long de l’histoire en faisant des choix menant à des conséquences
		tel que rentrer dans une forêt en espérant trouver un raccourci ou bien contourner l’obstacle au risque de perdre du temps et de se dérouter de son objectif ;
		il affrontera également des adversaires redoutables tout au long de son aventure. 
		</p>

		<p class="footer">Vitesse de chargement: <strong>{elapsed_time}</strong> seconds.</p>
	</div>
</body>
</html>
