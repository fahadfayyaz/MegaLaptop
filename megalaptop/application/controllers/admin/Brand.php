<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Brand extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('brand_model', 'brand');
		if (! $this->session->userdata('is_logged_in') ) redirect('/admin','refresh');
	}
	
	public function index()
	{
		$this->load->model('brand_model');
		
		if ($this->input->get('q'))
		 		$this->db->like('title', $this->input->get('q'), 'BOTH');

		$config['base_url'] = base_url() . 'admin/brand/index';
		$config['total_rows'] = $this->brand_model->count_all();
		$config['per_page'] = ($this->input->get('per_page')) ? $this->input->get('per_page') : '15';
		$config['uri_segment'] = 4;
		$config['num_links'] = 3;
		
		$this->pagination->initialize($config);
		
		if ($this->input->get('q'))
		 		$this->db->like('title', $this->input->get('q'), 'BOTH');

		$data['brands'] = $this->brand_model->get_all($config['per_page'], $this->uri->segment(4));
		$data['mainContent'] = '/admin/brand/index';
		$this->load->view('/admin/layout/master', $data);

	}

	public function add()
	{
		$this->load->model('brand_model');
		if ($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$this->form_validation->set_rules('create_date', 'Date', 'required');
			$this->form_validation->set_rules('title', 'Title', 'required|is_unique[afa110_brand.title]');
			$this->form_validation->set_rules('slug', 'Slug', 'required');
			if ($this->form_validation->run() == TRUE ) 
			{

				$fileUpload = [];
				$hasFileUploaded = FALSE;

				$preferences = [
					'upload_path' => './uploads/',
					'allowed_types' => 'jpg|jpeg|gif|png',
					'encrypt_name'=> TRUE
				];

				$this->upload->initialize($preferences);

				if ( ! $this->upload->do_upload('brand_img')){
					$data['error'] = $this->upload->display_errors();
				}
				else{
					$fileUpload = $this->upload->data();
					$hasFileUploaded = TRUE;
				}

				if ($hasFileUploaded) 
				{
					$options = [
						'create_date' => $this->input->post('create_date'),
						'title' => $this->input->post('title'),
						'slug' => $this->input->post('slug'),
						'brand_img' => $fileUpload['file_name'],
						'status' => 'DEACTIVE',
						'meta_description' => $this->input->post('meta_description'),
						'meta_keyword' => $this->input->post('meta_keyword')
					];

					$this->brand_model->create($options);
					redirect('/admin/brand','refresh');
				}
			}			
		}

		$data['mainContent'] = '/admin/brand/add';
		$this->load->view('/admin/layout/master', $data);
	}
	
	public function edit($brand_id)
	{
		$this->load->model('brand_model');

		if ($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$fileUpload = [];
			$hasFileUploaded = FALSE;

			$preferences = [
				'upload_path' => './uploads/',
				'allowed_types' => 'jpg|jpeg|gif|png',
				'encrypt_name'=> TRUE
			];

			$this->upload->initialize($preferences);

			if ( ! $this->upload->do_upload('brand_img')){
				$data['error'] = $this->upload->display_errors();
			}
			else{
				$fileUpload = $this->upload->data();
				$hasFileUploaded = TRUE;
			}

			$options = [
				'create_date' => $this->input->post('create_date'),
				'title' => $this->input->post('title'),
				'slug' => $this->input->post('slug'),
				'brand_img' => ($hasFileUploaded) ? $fileUpload['file_name'] : $this->input->post('img_url'),
				'meta_description' => $this->input->post('meta_description'),
				'meta_keyword' => $this->input->post('meta_keyword')
			];

			$affected = $this->brand_model->update($brand_id, $options);

			if ($affected) 
			{
				if ($hasFileUploaded) 
					if (file_exists('./uploads/' . $this->input->post('img_url')))
						unlink('./uploads/' . $this->input->post('img_url'));
					
				redirect('/admin/brand','refresh');
			}
		}

		$data['brand'] = $this->brand_model->get_by($brand_id);
		$data['mainContent'] = '/admin/brand/edit';
		$this->load->view('/admin/layout/master', $data);
	}

	public function delete($brand_id)
	{
		sleep(1);
		$this->load->model('brand_model');
		
		$row = $this->brand_model->get_by($brand_id);
		$currentImage = $row->brand_img;

		$affected = $this->brand_model->remove($brand_id);
		echo 1;
		/*if ($affected) {
			unlink('./uploads/' . $currentImage);
		}*/
	}

	public function status($brand_id)
	{
		sleep(1);
		$this->load->model('brand_model');
		$row = $this->brand_model->get_by($brand_id);

		$newStatus = ($row->status == 'DEACTIVE') ? 'ACTIVE' : 'DEACTIVE';

		$options = [
			'status' => $newStatus
		];
		$this->brand_model->update($brand_id, $options);
		echo $newStatus;
	}

	public function activeall()
	{
		$checkAll = $this->input->post('checkAll');
		$option = [
			'status' => 'ACTIVE'
		];
		foreach ($checkAll as $id) {
			echo $this->brand->update($id, $option);
		}
	}

	public function deactiveall()
	{

		 $checkAll = $this->input->post('checkAll');
		$option = [
			'status' => 'DEACTIVE'
		];
		foreach ($checkAll as $id) {
			echo $this->brand->update($id, $option);
		}
	}


	public function delete_all()
	{
		$checkAll = $this->input->post('checkAll');
		foreach ($checkAll as $id) {
			echo $this->delete($id);
		}
	}
}
