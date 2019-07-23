<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Product_review_model extends CI_Model {

	public function create($options)
	{
		$this->db->insert('afa110_review', $options);
		return $this->db->insert_id();
	}
	public function get_all($limit = NULL , $offset = NULL)
	{
		$this->db->order_by('id', 'desc');
		$query = $this->db->get('afa110_review', $limit , $offset);
		return $query->result();
	}
	public function get_by($reviewId)
	{
		$this->db->where('id', $reviewId);
		$query = $this->db->get('afa110_review');
		return $query->row();
	}
	public function count_all()
	{
		$query = $this->db->get('afa110_review');
		return $query->num_rows();
	}
	public function update($reviewId, $option)
	{
		$this->db->where('id', $reviewId);
		$this->db->update('afa110_review', $option);
		return $this->db->affected_rows();
	}
	public function remove($reviewId)
	{
		$this->db->where('id', $reviewId);
		$this->db->delete('afa110_review');
		return $this->db->affected_rows();
	}
}

/* End of file Product_review_model.php */
/* Location: ./application/models/Product_review_model.php */