<?php

namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\UserModel;

class Home extends BaseController
{

	public function index()
	{
		$model = new UserModel();
		$data['blogs'] = $model->getblogs();
		// return view('index',$data);
		$rtrn = view('includes/header',$data);
		$rtrn .= view('index');
		$rtrn .= view('includes/footer');
		return $rtrn;
	}
	public function saveblog(){
		$model = new UserModel();
		$data = array(
			'blogername' => $this->request->getPost('blogerName'),
			'blogtitle' => $this->request->getPost('title'),
			'content' => $this->request->getPost('content')
		);
		$model->saveblog($data);
		return redirect()->to('/');
	}
	public function deleteblog()
	{
		$model = new UserModel();
		$id = $this->request->getPost('id');
		$res = $model->deleteblog($id);
		if ($res) {
			$msg = "Your blog has been deleted";
		}else{
			$msg = "Some error Occured";
		}
		echo $msg;
	}
	public function editblog()
	{
		$model = new UserModel();
		$id = $this->request->getPost('id');
		$data['rlt'] = $model->getblogsbyid($id);
		// print_r($data['rlt']);echo $id;exit;
		foreach($data['rlt'] as $res){
			$name = $res['blogername'];
			$title = $res['blogtitle'];
			$content = $res['content'];
			$id = $res['id'];
		}
		$form .= '<h2 class="text-center">Edit Blog</h2>
		<form action="'.site_url().'home/updateblog" method="POST">
				<div class="form-group">
					<label>Bloger Name</label><span class="text-danger"> *</span>
					<input type="text" class="form-control" name="blogerName" value="'.$name.'" required>
				</div>
				<div class="form-group">
					<label>Title</label><span class="text-danger"> *</span>
					<input type="text" class="form-control" name="title" value="'.$title.'" required>
				</div>
				<div class="form-group">
					<label>Content</label><span class="text-danger"> *</span>
					<textarea type="text" class="form-control" name="content" rows="2" required>'.$content.'</textarea>
				</div>
				<input type="hidden" value="'.$id.'" name="id">
				<button type="submit" class="btn btn-primary float-right clear-all">Update</button>
				<div style="clear:both;"></div>
			</form>';
		// }
			echo $form; exit;
	}

	public function updateblog()
	{
		$model = new UserModel();
		$data = array(
			'blogername' => $this->request->getPost('blogerName'),
			'blogtitle' => $this->request->getPost('title'),
			'content' => $this->request->getPost('content')			
		);
		$id = $this->request->getPost('id');
		$model->updateblog($data,$id);
		return redirect()->to('/');
		 
	}
	public function login()
	{
		echo 'success';
	}



}
