<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:76:"D:\xampp\htdocs\MessageBoard\public/../application/index\view\index\add.html";i:1493714318;s:79:"D:\xampp\htdocs\MessageBoard\public/../application/index\view\index\header.html";i:1493714318;s:80:"D:\xampp\htdocs\MessageBoard\public/../application/index\view\index\contact.html";i:1493714318;s:79:"D:\xampp\htdocs\MessageBoard\public/../application/index\view\index\editor.html";i:1493714318;}*/ ?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>发布留言－Thinkphp 5.0 留言板</title>
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
	<form class="form-horizontal" action="__ROOT__/addarticle" method="post">
  <div class="form-group">
    <label class="col-sm-2 control-label">标题</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="title" placeholder="请输入标题">
    </div>
  </div>
  <div class="form-group">
    <label  class="col-sm-2 control-label">内容</label>
    <div class="col-sm-10">
      <input type="text" name="content" hidden class='contents'>
<script type="text/plain" id="myEditor" style="width: 100%"></script>
<script>
$opt={toolbar:[
			'source |',
            'undo redo | bold italic underline strikethrough | superscript subscript | forecolor backcolor |',
            'horizontal | insertorderedlist insertunorderedlist | link unlink | selectall cleardoc' ,
            '| justifyleft justifycenter justifyright justifyjustify | paragraph fontfamily fontsize',
            '| emotion image video',
            ' | fullscreen'
    ]};
    var um = UM.getEditor('myEditor',$opt);
 function getContent(){
  return um.getContent();
 }
 $(function(){
  $('button[type="submit"]').on('click',function(){
    $('.contents').val(getContent())
  })
 })
</script>
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary saveContent">发布留言</button>
    </div>
  </div>
</form>
</div>
</body>
</html>
