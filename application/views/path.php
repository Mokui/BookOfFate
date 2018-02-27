<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
    <title>Book of Fate</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/path.css');?>">
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
		<p><?php echo $descrip?></p>
			<ul class="emargeur">
				<?php
					if(isset($nextPath0)) {
						?><li><a href="<?php echo base_url(); ?>/index.php/Welcome/changePage/"> <?php echo $nextPath0; ?> </a></li><?php
					} 
					if(isset($nextPath1)) {
						?><li><a href="<?php echo base_url(); ?>/index.php/Welcome/changePage/<?php $tab1 ?>"> <?php echo $nextPath1; ?> </a></li><?php
					}
					if(isset($nextPath2)) {
						?><li><a href="<?php echo base_url(); ?>/index.php/Welcome/changePage/<?php $tab2 ?>"> <?php echo $nextPath2; ?> </a></li><?php
					}
				?>
			</ul>
		</div>

		<p class="footer">Vitesse de chargement <strong>{elapsed_time}</strong> secondes.</p>
	</div>
</body>
</html>
