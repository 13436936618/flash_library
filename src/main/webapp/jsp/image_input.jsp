<%--
  Created by IntelliJ IDEA.
  User: AERO
  Date: 2019/4/20
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>导入图片</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<main role="main" class="container">
    <br>
    <br>
    <br>
    <br>
    <br>
    <h1 class="text-center">图片上传</h1>
    <br>
    <div class="container">
        <form action="${pageContext.request.contextPath}/image/input/${user.id}" method="post" enctype="multipart/form-data">
            <span>图片名称:</span><input type="text" class="form-control" name="imagename" placeholder="请输入图片名称">
            <br>
            <br>
            <br>
            <span>选择图片:</span>
            <label class="control-label"></label>
            <input id="input-1" type="file" name="file">
            <br>
            <br>
            <br>
            <button type="submit" class="btn btn-info btn-lg btn-block" id="btn">提交图片</button>
        </form>
        <br>
        <br>
    </div>
</main>
<script>
    var btn = document.getElementById('btn');
    btn.onclick=function(){
        alert("正在提交。。。。")
    }
</script>
</body>
</html>
