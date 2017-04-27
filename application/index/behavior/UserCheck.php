<?php
namespace app\index\behavior;
use think\Controller;

/**
* 
*/
class UserCheck
{
	use \traits\controller\Jump;
	public function run(&$params){
		return $this->error('请登录！','/MessageBoard/public/login');
	}
	
}