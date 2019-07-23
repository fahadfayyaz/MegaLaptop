<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Product_specification extends CI_Controller {


	public function add($product_id)
	{
		$this->load->model('product_specification_model');
		if ($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$this->form_validation->set_rules('processor_type', 'Processor Type', 'required');
			$this->form_validation->set_rules('processor_speed', 'Processor Speed', 'required');

			if ($this->form_validation->run() == TRUE) 
			{

			$options = array (
				'product_id' => $product_id,
                'processor_type' => $this->input->post('processor_type'),
				'processor_speed' => $this->input->post('processor_speed'),
				'hard_drive_size' => $this->input->post('hard_drive_size'),
				'installed_ram' => $this->input->post('installed_ram'),
				'screen_size' => $this->input->post('screen_size'),
				'camera' => $this->input->post('camera'),
				'color' => $this->input->post('color'),
				'operating_system' => $this->input->post('operating_system'),
				'bluetooth' => $this->input->post('bluetooth'),
				'wifi' => $this->input->post('wifi'),
				'lan' => $this->input->post('lan'),
				'modem' => $this->input->post('modem'),
			);

			$this->product_specification_model->create($options);
			redirect('/admin/product', 'refresh');
			}	
		}
		$data['title'] = 'Add Specification';
		$data['mainContent'] = '/admin/product_specification/add';
		$this->load->view('/admin/layout/master', $data);
	}

	public function edit($specification_id)
	{	
		$this->load->model('product_specification_model');
		if ($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$options = array (
                'processor_type' => $this->input->post('processor_type'),
				'processor_speed' => $this->input->post('processor_speed'),
				'hard_drive_size' => $this->input->post('hard_drive_size'),
				'installed_ram' => $this->input->post('installed_ram'),
				'screen_size' => $this->input->post('screen_size'),
				'camera' => $this->input->post('camera'),
				'color' => $this->input->post('color'),
				'operating_system' => $this->input->post('operating_system'),
				'bluetooth' => $this->input->post('bluetooth'),
				'wifi' => $this->input->post('wifi'),
				'lan' => $this->input->post('lan'),
				'modem' => $this->input->post('modem'),
			);

			$this->product_specification_model->update($specification_id, $options);
			redirect('/admin/product', 'refresh');
		}

		$data['specification'] = $this->product_specification_model->get_by($specification_id);
		$data['title'] = 'Edit Specification';
		$data['mainContent'] = '/admin/product_specification/edit';
		$this->load->view('/admin/layout/master', $data);
	}

	public function specification_seed()
	{
		$this->load->model('product_specification_model');
		
		$faker = Faker\Factory::create();
		for ($i=0; $i < 50; $i++) {
			$title = $faker->name;
			$options = array (
				'product_id' => $faker->postcode,
                'processor_type' => $faker->jobTitle,
				'processor_speed' => $faker->postcode,
				'hard_drive_size' => $faker->buildingNumber,
				'installed_ram' => $faker->postcode,
				'screen_size' => $faker->postcode,
				'camera' =>$faker->jobTitle,
				'color' => $faker->jobTitle,
				'operating_system' => $faker->postcode,
				'bluetooth' => $faker->jobTitle,
				'wifi' => $faker->jobTitle,
				'lan' => $faker->jobTitle,
				'modem' => $faker->jobTitle,
			);

			$this->product_specification_model->create($options);

	      }
	      redirect('/admin/product', 'refresh');
	  }

}
