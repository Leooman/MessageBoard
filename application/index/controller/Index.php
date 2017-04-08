<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use think\Validate;
use think\Session;
use think\Hook;

use app\index\model\User;
use app\index\model\Lists;
class Index extends Controller
{

	private $path='/MessageBoard';
	public function check(){
		if(!Session::has('name')){
			Hook::listen('CheckAuth',$params);
		}	
	}

	public function login(){
		if(Session::has('name')){
			$name=Session::get('name');
		}else{
			$name=null;
		}
		$this->assign('name',$name);
	}
	public function index(){
		$this->login();
		$lists=Lists::paginate(5);
		foreach ($lists as $a) {
			$a['count']=count($a->comments);
		}
		$this->assign('list',$lists);
		return $this->fetch();
	}

	public function out(){
		Session::clear();
		return $this->success('退出成功',$this->path);
	}
	public function read($id){
		$this->check();
		$this->login();
		$article=Lists::get($id);
		$comments=$article->comments()->select();
		// $comments=Db::name('comment')->where('article_id',$id)->select();
		$this->assign('article',$article);
		$this->assign('comments',$comments);
		return $this->fetch();
	}
	
	public function addcomment($id){
		$comment=new User;
		$comment->article_id=$id;
		$comment->username=$_POST['username'];
		$comment->content=$_POST['content'];
		$comment->create_time=time();

		if($comment->save()){
			$this->success('添加评论成功！',$this->path.'/read/'.$id);
		}else{
			$this->error('添加评论失败！');
		}
	}

	public function delete($id){
		$this->check();
		$article=Lists::get($id);
		if($article){
			$article->delete();
			$article->comments()->delete();
			$this->success('删除记录成功！',$this->path);
		}else{
			$this-error('没有要删除的记录！');
		}
	}

	public function add(){
		$this->check();
		$this->login();
		return $this->fetch();
	}

	public function addarticle(){
		$article=new Lists;
		$data['title']=$_POST['title'];
		$data['content']=htmlspecialchars($_POST['content']);
		$data['create_time']=time();

		$rule=[
			'title'=>'require',
			'content'=>'require'
		];
		$validate=new Validate($rule);
		if(!$validate->check($data)){
			$this->error('请输入标题和内容！');
		}
		if($article->save($data)){
			$this->success('留言发布成功！',$this->path);
		}else{
			$this->error('留言发布失败！');
		}
	}
}
