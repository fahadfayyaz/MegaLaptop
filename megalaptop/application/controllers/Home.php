<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('brand_model', 'brand');
		$this->load->model('product_model', 'product');
	}

	public function index()
	{
		$this->load->view('index');
	}
}
