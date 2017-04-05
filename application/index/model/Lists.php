<?php
namespace app\index\model;
use think\Model;
class Lists extends Model{
	protected $name='article';

	public function comments(){
		return $this->hasMany('User');
	}
}