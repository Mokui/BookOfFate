<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Controller_Choix_Scenario extends CI_Controller
{
	public function index()
	{
		$this->load->database();
		$this->load->view('View_Choix_Scenario');
	}

	public function charger_liste_scenario()
	{
		$this->load->model('Model_Choix_Scenario');
		$liste_scenario = $this->Model_Choix_Scenario->charger_liste_scenario();

		echo json_encode($liste_scenario);
	}

	public function charger_details_scenario()
	{
		$id_scenario = $_POST['id_scenario'];

		$this->load->model('Model_Choix_Scenario');
		$details_scenario = $this->Model_Choix_Scenario->charger_details_scenario($id_scenario);

		$_SESSION['id_scenario'] = $details_scenario->idScenario;
		$_SESSION['id_path_start'] = $details_scenario->idPathStart;

		echo json_encode($details_scenario);
	}

	public function charger_page_scenario()
	{
		/*if(!empty($_POST['pseudo']))
		{
			$this->load->view('welcome_message');
		}
		else
		{
			$this->load->view('View_Choix_Scenario');
		}*/

	}
}
