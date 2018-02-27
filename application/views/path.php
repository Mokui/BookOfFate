<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
    <title>Book of Fate</title>
	<link rel="stylesheet" type="text/css" href="assets/css/path.css">
</head>
<body>
	<div id="container">
		<h1>
			Bienvenue sur Trantor III
		</h1>

		<div class="emargeur">
		<div class="encadrer">
			<img alt="Theme" src="http://i62.servimg.com/u/f62/11/12/11/11/territ15.jpg" />
		</div>
		<div class="encadrer feuille">
		<div class="blokthat">
				<p>Feuille de personnage:</p>
			</div>
			<div class="encadrer">
				<ul>
					<li>Vie: 20</li>
					<li>Force : 15</li>
					<li>Dexterité : 12</li>
					<li>Intelligence : 13</li>
					<li>Perception : 9</li>
					<li>Resistance physique : 5</li>
					<li>Resistance magique : 2</li>
					<li>Resistance saignement :	3</li>
				</ul>
			</div>
		</div>
		</div>

		<div id="body">
			<p>Dein Syria per speciosam interpatet diffusa planitiem. 
				hanc nobilitat Antiochia, mundo cognita civitas, cui non certaverit alia advecticiis ita adfluere copiis et internis, et Laodicia et Apamia itidemque Seleucia iam inde a primis auspiciis florentissimae.
				Saepissime igitur mihi de amicitia cogitanti maxime illud considerandum videri solet, utrum propter imbecillitatem atque inopiam desiderata sit amicitia, ut dandis recipiendisque meritis quod quisque minus per se ipse posset, id acciperet ab alio vicissimque redderet, an esset hoc quidem proprium amicitiae, sed antiquior et pulchrior et magis a natura ipsa profecta alia causa. Amor enim, ex quo amicitia nominata est, princeps est ad benevolentiam coniungendam. Nam utilitates quidem etiam ab iis percipiuntur saepe qui simulatione amicitiae coluntur et observantur temporis causa, in amicitia autem nihil fictum est, nihil simulatum et, quidquid est, id est verum et voluntarium.
				Incenderat autem audaces usque ad insaniam homines ad haec, quae nefariis egere conatibus, Luscus quidam curator urbis subito visus: eosque ut heiulans baiolorum praecentor ad expediendum quod orsi sunt incitans vocibus crebris. qui haut longe postea ideo vivus exustus est.
			</p>
			<ul class="emargeur">
				<li>Choix 1</li>
				<li>Choix 2</li>
				<li>Choix 3</li>
			</ul>
		</div>

		<p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds. <?php echo  (ENVIRONMENT === 'development') ?  'CodeIgniter Version <strong>' . CI_VERSION . '</strong>' : '' ?></p>
	</div>
</body>
</html>
