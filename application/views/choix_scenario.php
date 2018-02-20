<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
    <title>Book of Fate - Choix scénario</title>

		<!-- JQUERY -->
		<script src="assets/jquery/jquery-3.3.1.min.js"></script>
		<!-- BOOTSTRAP -->
		<script src="assets/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<div class="row">
	<div class="col-md-6">
		<h2>Choisissez votre scénario</h2>

		<div id="liste-scenario">
			<ul>
				<li value="1">Un scénario très bien</li>
				<li value="2">L'histoire d'un scénario pas ouf</li>
				<li value="3">Les aventures de Tom et Yanis</li>
				<li value="4">Scénario vide et inutile</li>
			</ul>
		</div>

		<div id="input-pseudo">
			<form>
				<input type="text" placeholder="Votre pseudo">
				<button type="button" >Valider</button>
			</form>
		</div>
	</div>

	<div class="col-md-6">
		<div id="image-scenario"><img style="width:70%;" src="http://cdn03.overnature.net/5120/15-fotos-de-la-naturaleza-salvaje-y-rebelde-conquistados.jpg" alt="image scenario medieval"/></div>
		<div id="description-scenario"></div>
	</div>
</div>

	<script src="<?php echo base_url('assets/js/choix_scenario.js');?>"></script>
	<script type="text/javascript">
	    var baseurl = "<?php echo base_url(); ?>";
	</script>
</body>
</html>
