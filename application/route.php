<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

return [
    '__pattern__' => [
        'name' => '\w+',
    ],
    '[hello]'     => [
        ':id'   => ['index/hello', ['method' => 'get'], ['id' => '\d+']],
        ':name' => ['index/hello', ['method' => 'post']],
    ],
   'read/:id'=>'index/read',
   'addcomment/:id'=>'index/addcomment',
   'delete/:id'=>'index/delete',
   'add'=>'index/add',
   'out'=>'index/out',
   'check'=>'index/check',
   'addarticle'=>'index/addarticle',
   'login'=>'login/index',
   'login_submit'=>'login/login',
   'regist'=>'regist/index',
   'regist_submit'=>'regist/regist'
];
