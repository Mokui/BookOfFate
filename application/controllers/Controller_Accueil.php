<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Controller_Accueil extends CI_Controller
{
	public function index()
	{
		$this->load->view('WelcomePageIndex');
	}
}
?>
