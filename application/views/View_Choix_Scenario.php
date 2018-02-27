<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
    <title>Book of Fate - Choix scénario</title>

		<!-- JQUERY -->
		<script src="<?php echo base_url('assets/jquery/jquery-3.3.1.min.js')?>"></script>
		<!-- BOOTSTRAP -->
		<script src="<?php echo base_url('assets/bootstrap/js/bootstrap.min.js')?>"></script>
		<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css')?>" />
		<!-- CSS PERSO -->
		<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/choix_scenario.css')?>" />
</head>
<body>
	<div id="container">
		<h1>Choisissez votre scénario</h1>
		<div id="body">
			<div class="row">
				<div class="col-md-6">

					<div id="liste-scenario">
						<ul class="list-group">
							Chargement en cours ...
						</ul>
					</div>

					<div id="form-pseudo" class="mt-4">
						<form class="form-group form-inline">
							<input type="text" class="form-control mr-2" name="pseudo" placeholder="Votre pseudo">
							<a href="<?php echo base_url();?>index.php/Welcome/index">
								<button type="button" class="btn btn-dark">Commencer l'aventure !</button>
							</a>
						</form>
					</div>
				</div>

				<div class="col-md-6">
					<div id="image-scenario"></div>
					<div id="description-scenario" class="mt-2 mb-2 pl-2"></div>
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
