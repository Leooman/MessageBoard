<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:78:"D:\xampp\htdocs\MessageBoard\public/../application/index\view\index\index.html";i:1493714318;s:79:"D:\xampp\htdocs\MessageBoard\public/../application/index\view\index\header.html";i:1493714318;s:80:"D:\xampp\htdocs\MessageBoard\public/../application/index\view\index\contact.html";i:1493714318;}*/ ?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Thinkphp 5.0 留言板</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link href="__STATIC__/um/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="__STATIC__/um/third-party/jquery.min.js"></script>
<script type="text/javascript" src="__STATIC__/um/third-party/template.min.js"></script>
<script type="text/javascript" charset="utf-8" src="__STATIC__/um/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="__STATIC__/um/um.min.js"></script>
<script type="text/javascript" src="__STATIC__/um/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
<div class="container" style="margin-top:20px;">
<nav class="navbar navbar-default">
  <div class="container-fluid">
	  <div class="navbar-header">
      <a class="navbar-brand" href="#">Leooman 留言本</a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="__ROOT__">首页 <span class="sr-only">(current)</span></a></li>
        <li><a href="__ROOT__/add">发布留言</a></li>
        
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <?php if($name): ?>
        <li><a href="#">欢迎您！<?php echo $name; ?></a></li>
        <li><a href="__ROOT__/out">退出</a></li>
        <?php else: ?>
      	<li><a href="__ROOT__/regist">注册</a></li>
        <li><a href="__ROOT__/login">登录</a></li>
        <?php endif; ?>
        <li><a href="#">QQ:351234955</a></li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
	
    <table class="table">
    	<tr>
        	<td>编号</td>
            <td>标题</td>
            <td>评论</td>
            <td>发布日期</td>
            <td>操作</td>
        </tr>
        <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?>
        <tr>
        	<td><?php echo $v['id']; ?></td>
            <td><a href="__ROOT__/read/<?php echo $v['id']; ?>"><?php echo $v['title']; ?></a></td>
            <td><?php echo $v['count']; ?></td>
            <td><?php echo $v['create_time']; ?></td>
            <td> <a href="__ROOT__/delete/<?php echo $v['id']; ?>" class="btn btn-danger">删除</a></td>
        </tr>
        <?php endforeach; endif; else: echo "" ;endif; ?>
    </table>
    <?php echo $list->render(); ?>
</div>
</body>
</html>
