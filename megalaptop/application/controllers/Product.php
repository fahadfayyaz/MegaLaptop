<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('brand_model', 'brand');
		$this->load->model('product_model', 'product');
		$this->load->model('product_gallery_model', 'gallery');
	}


	public function index()
	{
		if ($this->input->get('price')) 
		{
			$priceItem = explode('-', $this->input->get('price'));
			$this->db->where('price >=', $priceItem[0]);
			$this->db->where('price <=', $priceItem[1]);
		}

		if ($this->input->get('types')) 
			$this->db->like('title', $this->input->get('types'), 'BOTH');

		if ($this->input->get('s'))
			$this->db->like('title', $this->input->get('s'), 'BOTH');
		
	
		$data['products'] = $this->product->show_all();
		$data['title'] = "wait for a while";
		$this->load->view('product/index', $data);
	}
	public function detail($slug)
	{	
		$row = $this->product->show_by($slug);

		// UPDATE VIEWS
		$this->product->update_views($row->id);
		
		// RELATED PRODUCTS
		$this->db->where('brand_id !=', $row->id);
		$this->db->where('brand_id', $row->brand_id);
		$this->db->order_by('id', 'RANDOM');

		$data['relatedProducts'] = $this->product->show_all();
		$data['brand_array'] = $this->brand->brand_array();
		$data['product'] = $row;
		$this->load->view('product/detail', $data);
	}
}
