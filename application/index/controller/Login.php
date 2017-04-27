<?php
namespace app\index\controller;
// use think\View;
use think\Controller;
use think\Session;
use think\Validate;
use app\index\model\Pass;

class login extends Controller{
	public function index(){
		// $view = new View;
		return $this->fetch();
	}
	public function checkcode() 
	{
		$code=input('post.user_vertify');
		if(!captcha_check($code))
		{
		 echo "验证码错误！";
		} else {
		 echo "验证通过！";
		}
	}
	public function login($user_name='',$user_passwd=''){
		$user=Pass::get([
				'user_name' => $user_name,
				'UserPassward' => $user_passwd
			]);
		Session::set('name',$user_name);
		$code=input('post.user_vertify');
		if(!captcha_check($code))
		{
		 	return $this->error('验证码错误');
		} else {
			 if($user){
				return $this->success('登录成功！','/MessageBoard/public');
			}else{
				return $this->error('用户名或密码不正确');
			}
		}	
	}
}