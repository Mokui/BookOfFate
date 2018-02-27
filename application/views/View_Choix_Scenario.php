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
		<!-- CSS PERSO -->
		<link rel="stylesheet" type="text/css" href="assets/css/choix_scenario.css" />
</head>
<body>
	<div id="container">
		<h1>Choisissez votre scénario</h1>
		<div id="body">
			<div class="row">
				<div class="col-md-6">

					<div id="liste-scenario">
						<ul>
							Chargement en cours ...
						</ul>
					</div>

					<div id="form-pseudo">
						<!--<form action='index.php/Controller_Choix_Scenario/charger_page_scenario' method="POST">-->
						<form method="POST">
							<input type="text" name="pseudo" placeholder="Votre pseudo">
							<input type="submit" value="Valider">
						</form>
					</div>
				</div>

				<div class="col-md-6">
					<div id="image-scenario"></div>
					<div id="description-scenario"></div>
				</div>
			</div>
		</div>
	</div>
	<script src="<?php echo base_url('assets/js/choix_scenario.js');?>"></script>
	<script type="text/javascript">
	    var baseurl = "<?php echo base_url(); ?>";
	</script>
</body>
</html>
