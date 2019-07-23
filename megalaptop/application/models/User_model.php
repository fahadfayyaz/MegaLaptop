<?php defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {

	public function create($options)
	{
		$this->db->insert('afa110_user', $options);
		return $this->db->insert_id();
	}

	public function validate_credentials($where)
	{
		$this->db->where($where);
		$query = $this->db->get('afa110_user');
		
		if ($query->num_rows() > 0) {
			return $query->row();
		}
		return FALSE;
	}

	public function update($option = [] ,$where)
	{
		$this->db->where($where);
		$this->db->update('afa110_user', $option);
		return $this->db->affected_rows();
	}

	public function get_by($regId)
	{
		$this->db->where('id', $regId);
		$query = $this->db->get('afa110_user');
		return $query->row();
	}

	public function count_all()
	{
		$query = $this->db->get('afa110_user');
		return $query->num_rows();
	}

}