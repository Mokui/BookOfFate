<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Choix_Scenario extends CI_Controller
{

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	 public function test()
	 {
		 echo "Test réussi";
	 }

	public function index()
	{
		$this->load->database();
		$this->load->view('choix_scenario');

		/*$query = $this->db->query('SELECT * FROM g1_bookoffate.Individu');

		foreach ($query->result() as $row)
		{
				echo "<br> ==================== <br>";
				echo $row->type;
				echo "<br>";
				echo $row->name;
				echo "<br>";
				echo $row->level;
		}

		echo 'Total Results: ' . $query->num_rows();*/
	}

	public function charger_details_scenario($id_scenario)
	{

	}
}
