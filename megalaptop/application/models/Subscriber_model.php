<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Subscriber_model extends CI_Model {

	public function create($options)
	{
		$this->db->insert('afa110_subscriber', $options);
		return $this->db->insert_id();
	}

	public function get_all($limit = NULL, $offset = NULL)
	{
		$query = $this->db->get('afa110_subscriber', $limit, $offset);
		return $query->result();
	}

	public function get_by($subscriberId)
	{
		$this->db->where('id', $subscriberId);
		$query = $this->db->get('afa110_subscriber');
		return $query->row();
	}

	public function count_all()
	{
		$query = $this->db->get('afa110_subscriber');
		return $query->num_rows();
	}

	public function update($subscriberId, $options)
	{
		$this->db->where('id', $subscriberId);
		$this->db->update('afa110_subscriber', $options);
		return $this->db->affected_rows();
	}

	public function destroy($subscriberId)
	{
		$this->db->where('id', $subscriberId);
		$this->db->delete('afa110_subscriber');
		return $this->db->affected_rows();
	}
}

/* End of file Subscriber_model.php */
/* Location: ./application/models/Subscriber_model.php */