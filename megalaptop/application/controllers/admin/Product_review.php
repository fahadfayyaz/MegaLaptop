<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Product_review extends CI_Controller {

public function __construct()
	{
		parent::__construct();
		$this->load->model('product_review_model', 'review');
		if (! $this->session->userdata('is_logged_in') ) redirect('/admin','refresh');
	}


	public function index()
	{


		if ($this->input->get('q')) {
			$this->db->like('name', $this->input->get('q'), 'BOTH');
		}
		$config['base_url'] = base_url() . '/admin/product_review/index/';
		$config['total_rows'] = $this->review->count_all();
		$config['per_page'] = ($this->input->get('per_page')) ? $this->input->get('per_page') : 15;
		$config['uri_segment'] = 4;
		$config['num_links'] = 4;
		
		$this->pagination->initialize($config);
		
		if ($this->input->get('q')) {
			$this->db->like('name', $this->input->get('q'), 'BOTH');
		}

		$data['reviews'] = $this->review->get_all($config['per_page'], $this->uri->segment(4));
		$data['title'] = 'Manage Review';
		$data['mainContent'] = '/admin/product_review/index';
		$this->load->view('/admin/layout/master', $data);
	}

	public function add()
	{
		$this->load->model('review');

		if ($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$this->form_validation->set_rules('create_date', 'Date', 'required');
			$this->form_validation->set_rules('product_id', 'Product Id', 'required');
			$this->form_validation->set_rules('name', 'name', 'required');

			if ($this->form_validation->run() == TRUE) 
			{

			$options = [
				'create_date' => $this->input->post('create_date'),
				'product_id' => $this->input->post('product_id'), 
				'name' => $this->input->post('name'), 
				'email' => $this->input->post('email'), 
				'comment' => $this->input->post('comment'), 
				'status' => 'DEACTIVE' 
			];

			$this->review->create($options);
			redirect('/admin/product_review', 'refresh');

		}

	}
		
		$data['title'] = 'Add Review';
		$data['mainContent'] = '/admin/product_review/add';
		$this->load->view('/admin/layout/master', $data);
	}

	public function edit($product_review_id)
	{
		$this->load->model('review');
		if ($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$options =[
				'create_date' => $this->input->post('create_date'),
				'product_id' => $this->input->post('product_id'), 
				'name' => $this->input->post('name'), 
				'email' => $this->input->post('email'), 
				'comment' => $this->input->post('comment')
				   
			];

			$this->review->update($product_review_id, $options);
			redirect('/admin/product_review', 'refresh');

		}

		$data['review'] = $this->review->get_by($product_review_id);
		$data['title'] = 'Edit Review';
		$data['mainContent'] = '/admin/product_review/edit';
		$this->load->view('/admin/layout/master', $data);
	}
	public function delete($product_review_id)
	{
		$this->load->model('review');
		$this->review->remove($product_review_id);
		redirect ('/admin/product_review', 'refresh');
	}
	public function status($product_review_id)
	{
		$this->load->model('review');
		$row = $this->review->get_by($product_review_id);
		$newStatus = ($row->status == 'DEACTIVE') ? 'ACTIVE': 'DEACTIVE';
		$options =[
			'status' => $newStatus 
		];
		$this->review->update($product_review_id, $options);
		redirect ('/admin/Product_review', 'refresh');

	}


	public function activeall()
	{
		$checkAll = $this->input->post('checkAll');
		$option = [
			'status' => 'ACTIVE'
		];
		foreach ($checkAll as $id) {
			echo $this->review->update($id, $option);
		}
	}

	public function deactiveall()
	{

		 $checkAll = $this->input->post('checkAll');
		$option = [
			'status' => 'DEACTIVE'
		];
		foreach ($checkAll as $id) {
			echo $this->review->update($id, $option);
		}
	}


	public function delete_all()
	{
		$checkAll = $this->input->post('checkAll');
		foreach ($checkAll as $id) {
			echo $this->delete($id);
		}
	}

	public function review_seed()
	{
		$this->load->model('review');
		$faker = Faker\Factory::create();
		for ($i=0; $i < 150; $i++) {
			$title = $faker->name;
			$options = array (
				'create_date' => $faker->date($format = 'Y-m-d', $max = 'now'),
				'product_id' => $faker->postcode,
				'name' => $title, 
				'review' => $faker->paragraph, 
				'status' => $faker->randomElement(array('DEACTIVE','ACTIVE')),
			);

			$this->review->create($options);
			
	}
	redirect('/admin/product_review', 'refresh');
	}
}
