<?php
namespace app\index\controller;
// use think\View;
use think\Controller;
use think\Validate;
use app\index\model\Pass;

class Regist extends Controller{

  public function index(){
  	// $view = new View();
  	return $this->fetch();
  }
  
  public function regist(){
    $user = new Pass;
    // 内置验证
    /*$user->user_name = input('post.user_name');
    $user->UserSex = input('post.UserSex');
    $user->UserTel = input('post.UserTel');
    $user->UserEmail = input('post.UserEmail');
    $user->UserAddress = input('post.UserAddress');
    $user->UserBirth = input('post.UserBirth');
    $user->UserJoinTime = input('post.UserJoinTime');
    $user->UserPassward = input('post.UserPasswd');
    $user->UserSignature = input('post.UserSignature');
    $user->UserHobby = input('post.UserHobby');
    
    $result = $this->validate(
      [
        'name' => $user->user_name,
        'email' => $user->UserEmail,
        'sex' => $user->UserSex,
        'tel' => $user->UserTel,
        'address' => $user->UserAddress,
        'birth' => $user->UserBirth,
        'password' => $user->UserPassward,
      ],
      [
        'name' => 'require|max:10',
        'email' => 'email',
        'sex' => 'number|between:0,1',
        'tel' => 'require',
        'address' => 'require',
        'birth' => 'require',
        'password' => 'require',
      ]);
      if (true !== $result) {
	      $this->error($result);
	    }
	    
	    if ($user->save()) {
	      return $this->success('注册成功');
	    } else {
	      return $this->success('注册失败');
	    }*/
// 自定义验证
	$data['user_name'] = input('post.user_name');
    $data['UserSex'] = input('post.UserSex');
    $data['UserTel'] = input('post.UserTel');
    $data['UserEmail'] = input('post.UserEmail');
    $data['UserAddress'] = input('post.UserAddress');
    $data['UserBirth'] = input('post.UserBirth');
    $data['UserJoinTime'] = input('post.UserJoinTime');
    $data['UserPassward'] = input('post.UserPasswd');
    $data['UserSignature'] = input('post.UserSignature');
    $data['UserHobby'] = input('post.UserHobby');

    $rule=[
        ['user_name', 'require|max:10','名字不能为空|名字不能超过十位'],
        ['UserEmail', 'require|email','邮箱不能为空|邮箱格式不正确'],
        ['UserSex', 'number|between:0,1','请选择性别'],
        ['UserPassward','require','密码不能为空']
      ];
    /*$msg=[
        'user_name.require' => '名称必须',
        'UserEmail.email' => '邮箱格式不正确'
      ];*/
    $validate = new Validate($rule);
	$result   = $validate->check($data);
	if(!$result){
	    return $this->error($validate->getError());
	}else{
		if ($user->save($data)) {
	      return $this->success('注册成功','/MessageBoard/login');
	    } else {
	      return $this->error('注册失败');
	    }
	}
    
    
  }
}