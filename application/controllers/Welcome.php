<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->database();
	}

	public function index()
	{
		$this->changePage('path');
	}

	public function changePage($page = 'path', $numPath=1)
    {
        if ( ! file_exists('application/views/'.$page.'.php'))
        {
            // Whoops, we don't have a page for that!
            show_404();
		}
		
		//Requête qui recupère le chemin courant
		$query = $this->db->query('SELECT * FROM g1_bookoffate.Path where idPath='.$numPath);
		
		//Requête qui récupère les id des chemins suivant le chemin courant
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

		//On rempli le tableau avec des id des chemins suivants
		$tabNextPath = [];
		foreach ($queryNext->result() as $row) {
			array_push($tabNextPath,$row->idNextPath);
		}
		
		//IT'S DYNAMIC!
		//Création des queries permettant d'obtenir les chemins suivants
		for ($i=0; $i < count($tabNextPath); $i++) { 
			$idData = "tab" . $i;
			$data[$idData] = $tabNextPath[$i];
			${"queryChoice" . $i} = $this->db->query('SELECT * FROM g1_bookoffate.Path where idPath='.$tabNextPath[$i]);

			if(isset(${"queryChoice" . $i}))
			{
				$myq = ${"queryChoice" . $i};
				foreach ($myq->result() as $row)
				{
					$res = "nextPath".$i;
					$data[$res] = $row->descriptionPath;
				}
			}
		}
		$this->load->view($page, $data);
	}
}
