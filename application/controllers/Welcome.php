<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->database();
	}

	public function index()
	{
		// $this->load->view('path');
		$this->changePage('path');

		// $query = $this->db->query('SELECT * FROM g1_bookoffate.Individu');

		// foreach ($query->result() as $row)
		// {
		// 		echo "<br> ==================== </br>";
		// 		echo $row->type;
		// 		echo "<br> ---- </br> Nom: ";
		// 		echo $row->name;
		// 		echo "<br> Niveau: ";
		// 		echo $row->level;
		// 		echo "<br> Vie: ";
		// 		echo $row->life;
		// 		echo "<br>";
		// }

		// echo 'Total Results: ' . $query->num_rows();
	}

	public function changePage($page = 'path', $numPath=1)
    {
        if ( ! file_exists('application/views/'.$page.'.php'))
        {
            // Whoops, we don't have a page for that!
            show_404();
		}
		
		
		$query = $this->db->query('SELECT * FROM g1_bookoffate.Path where idPath='.$numPath);
		$queryNext = $this->db->query('SELECT NextPath.idNextPath FROM g1_bookoffate.NextPath where idPath='.$numPath);
		$data = array();
		
		foreach ($query->result() as $row)
		{
			$data['idpath'] = $row->idPath;
			$data['descrip'] = $row->descriptionPath;
			$data['iscombat'] = $row->isInCombat;
			$data['jet'] = $row->jet;
			$data['issucces'] = $row->isSucces;
			$data['checkvalue'] = $row->checkValue;
		}

		$tabNextPath = [];
		foreach ($queryNext->result() as $row) {
			array_push($tabNextPath,$row->idNextPath);
		}

		//DYNAMIC
		for ($i=0; $i < count($tabNextPath); $i++) { 
			${"queryChoice" . $i} = $this->db->query('SELECT * FROM g1_bookoffate.Path where idPath='.$tabNextPath[$i]);
			// foreach (${"queryChoice".$i}->result() as $row)
			// {
			// 	$res = "nextPath".$i;
			// 	$data[$res] = $row->descriptionPath;
			// }
		}
		//NOT DYNAMIC
		foreach ($queryChoice0->result() as $row)
		{
			$data["nextPath1"] = $row->descriptionPath;
		}
		foreach ($queryChoice1->result() as $row)
		{
			$data["nextPath2"] = $row->descriptionPath;
		}
		$this->load->view($page, $data);
	}
}
