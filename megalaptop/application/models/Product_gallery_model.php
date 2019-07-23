<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Product_gallery_model extends CI_Model {

	 public function create($options)
	 {
	 	$this->db->insert('afa110_product_gallery',  $options);
	 	return $this->db->insert_id();
	 }
}

/* End of file Product_gallery_model.php */
/* Location: ./application/models/Product_gallery_model.php */