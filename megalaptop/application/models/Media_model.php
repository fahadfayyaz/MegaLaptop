<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Media_model extends CI_Model {

	public function create($options)
	{
		$this->db->insert('afa110_media', $options);
		return $this->db->insert_id();
	}

	public function get_all($limit = NULL, $offset = NULL)
	{
		$this->db->order_by('id', 'desc');
		$query = $this->db->get('afa110_media', $limit, $offset);
		return $query->result();
	}

	public function get_by($mediaID)
	{
		$this->db->where('id', $mediaID);
		$query = $this->db->get('afa110_media');
		return $query->row();
	}

	public function count_all()
	{
		$query = $this->db->get('afa110_media');
		return $query->num_rows();
	}

	public function update($mediaID, $options)
	{
		$this->db->where('id', $mediaID);
		$this->db->update('afa110_media', $options);
		return $this->db->affected_rows();	
	}

	public function remove($mediaID)
	{
		$this->db->where('id', $mediaID);
		$this->db->delete('afa110_media');
		return $this->db->affected_rows();
	}
	
		public function media_array()
	{
		$medias = [];
		foreach ($this->get_all() as $key => $media) {
			$medias[$media->id] = $media->title;
		}
		return $medias;
	}

}
