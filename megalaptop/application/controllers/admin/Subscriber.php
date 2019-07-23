<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Subscriber extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('subscriber_model', 'subscriber');
		if (! $this->session->userdata('is_logged_in')) 
			redirect('/admin','refresh');

	}

	public function index()
	{
		$this->session->set_userdata('redirect_uri', $this->uri->uri_string());
		$this->load->library('pagination');
		if ($this->input->get('q')) {
			$this->db->like('fullname', $this->input->get('q'));
		}

		$config['base_url'] = base_url() . '/admin/subscriber/index/';
		$config['total_rows'] = $this->subscriber->count_all();
		$config['per_page'] = ($this->input->get('per_page')) ? $this->input->get('per_page') : 15 ;
		$config['suffix'] = '?' . $this->input->server('QUERY_STRING');
		
		$config['uri_segment'] = 4;
		$config['num_links'] = 3;
	
		$this->pagination->initialize($config);
		if ($this->input->get('q')) {
			$this->db->like('fullname', $this->input->get('q'));
		}
		$data['title'] = 'Manage Subscriber';
			
		$data['subscribers'] = $this->subscriber->get_all($config['per_page'], $this->uri->segment(4));
		$data['title'] = 'Manage Subscriber';
		$data['mainContent'] = 'admin/subscriber/index';
		$this->load->view('admin/layout/master', $data);
	}

	public function add()
	{		
		if ($_SERVER['REQUEST_METHOD'] == 'POST' ) 
		{
			$this->form_validation->set_rules('create_date', 'Date', 'required');
			$this->form_validation->set_rules('fullname', 'Fullname', 'required');
			$this->form_validation->set_rules('email', 'Email', 'required|is_unique[techlap123_subscriber.email]');

			if ($this->form_validation->run() == TRUE) 
			{
				$options = array(
					'create_date' => $this->input->post('create_date'), 
					'fullname' => $this->input->post('fullname'), 
					'email' => $this->input->post('email'), 
					'status' => "Deactive" 
				);

				$this->subscriber->create($options);
				redirect('admin/subscriber','refresh');
			}	
		}

		$data['mainContent'] = 'admin/subscriber/add';
		$data['title'] = 'Add Subscriber';
		$this->load->view('admin/layout/master', $data);
	}

	public function edit()
	{
		$name = $this->input->post('name');
		$value = $this->input->post('value');

		$new = [
			$name => $value
		];

		$this->subscriber->update($this->input->post('pk'), $new);
	}

	public function delete($subscriber_id)
	{
		$this->subscriber->destroy($subscriber_id);
		redirect('admin/subscriber','refresh');
	}

	public function status($subscriber_id)
	{
		$row = $this->subscriber->get_by($subscriber_id);
		$newStatus = ($row->status == 'Deactive') ? 'Active' : 'Deactive';

		$options = array(
			'status' => $newStatus  
		);

		$this->subscriber->update($subscriber_id, $options);

		redirect($this->session->userdata('redirect_uri'));
	}

	public function subscriber_seed()
	{
		$faker = Faker\Factory::create();

		for ($i=0; $i < 50; $i++) {	
			$options = array(
				'create_date' => $faker->date($format = 'Y-m-d', $max = 'now'), 
				'fullname' => $faker->firstNameMale, 
				'email' => $faker->freeEmail, 
				'status' => $faker->randomElement(array('ACTIVE','DEACTIVE')), 
			);

			$this->subscriber->create($options);
		}
		redirect('admin/subscriber','refresh'); 
	}
}
