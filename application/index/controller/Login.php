<?php
namespace app\index\controller;
// use think\View;
use think\Controller;
use think\Session;
use app\index\model\Pass;

class login extends Controller{
	public function index(){
		// $view = new View;
		return $this->fetch();
	}

	public function login($user_name='',$user_passwd=''){
		$user=Pass::get([
				'user_name' => $user_name,
				'UserPassward' => $user_passwd
			]);
		Session::set('name',$user_name);
		if($user){
			return $this->success('登录成功！','/MessageBoard');
		}else{
			return $this->error('登陆失败');
		}
	}
}