<?php
	namespace App\Models;
	use CodeIgniter\Model;

	class UserModel extends Model{
		protected $table = "blogs";
		protected $allowedFields = ["blogername","blogtitle","content"];
		public function getblogs($id=false){
			if ($id===false) {
				return $this->findAll();
			}else{
				return $this->getWhere(['id'=>$id]);
			}
		}
		public function saveblog($data)
	    {
	        // $query = $this->db->table($this->table)->insert($data);
	        $query = $this->insert($data);
	        return $query;
	    }
	    public function deleteblog($id){
	    	$query = $this->delete(['id'=>$id]);
	    	return $query;
	    }
	    public function getblogsbyid($id=false){
	    	return $this->find(['id' => $id]);
	    }
	    public function updateblog($data,$id){
	    	$query = $this->db->table($this->table)->update($data, array('id' => $id));
        	return $query;
	    }
	}
?>