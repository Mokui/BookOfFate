<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <title>Book of Fate</title>
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
		max-width: 80%;
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

	p {
		 margin: 0 0 10px;
		 padding:0;
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
	
	.encadrer{
		display:inline-block;
		vertical-align: middle;
	}
	
	.blokthat{
		display:block;
		margin:15px;
	}
	
	.feuille{
		background-color:#ccc9;
		color:black;
	}
	
	ul{
		margin:15px;
		text-align:left;
	}

	.emargeur{
		text-align:center;
		margin-bottom:2%;
	}

	ul.emargeur li{
		padding-bottom:1%;
	}
	</style>
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
