<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Controller_Rules extends CI_Controller
{
	public function index()
	{
		$this->load->view('rules');
	}
}
?>