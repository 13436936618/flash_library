<%--
  Created by IntelliJ IDEA.
  User: AERO
  Date: 2019/4/19
  Time: 22:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>注册</title>

    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container">
    <div class="py-5 text-center">
        <h2>注册页</h2>
    </div>


        <div class="col-md-12 order-md-1">
            <h4 class="mb-3">填写个人信息</h4>
            <form class="needs-validation" novalidate id="form" action="login.jsp">
                <div class="mb-3">
                    <label for="username">用户名</label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="username" placeholder="请输入用户名" required name="username">
                        <div class="invalid-feedback" style="width: 100%;">
                            Your username is required.
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="password">密码</label>
                    <input type="password" class="form-control" id="password" placeholder="请输入密码" name="password">
                    <div class="invalid-feedback">
                        Please enter a valid email address for shipping updates.
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="realname">姓名</label>
                        <input type="text" class="form-control" id="realname" placeholder="输入您的真实姓名" value="" required name="realname">
                        <div class="invalid-feedback">
                            Valid first name is required.
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="birthday">生日</label>
                        <input type="date" class="form-control" id="birthday" placeholder="" value="" required name="birthday">
                        <div class="invalid-feedback">
                            Valid last name is required.
                        </div>
                    </div>
                </div>


                <div class="mb-3">
                    <label for="email">邮箱</label>
                    <input type="email" class="form-control" id="email" placeholder="请输入邮箱" required name="email">
                    <div class="invalid-feedback">
                        Please enter your shipping address.
                    </div>
                </div>




                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="same-address">
                    <label class="custom-control-label" for="same-address">保存我的注册地址，方便下次登录</label>
                </div>


                <hr class="mb-4">
                <button class="btn btn-primary btn-lg btn-block" type="submit" id="regist">注册</button>
            </form>
        </div>
    </div>

    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2017-2018 Company Name</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Privacy</a></li>
            <li class="list-inline-item"><a href="#">Terms</a></li>
            <li class="list-inline-item"><a href="#">Support</a></li>
        </ul>
    </footer>
</div>
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"/>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>

    /*Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
    });*/

    var form = document.getElementById('form');
    var regist = document.getElementById('regist');
    regist.onclick=function(){
        submit();
    };
    function submit() {
        var username =$("#username").val();
        var password =$("#password").val();
        var realname =$("#realname").val();
        var birthday =$("#birthday").val();
        var email =$("#email").val();
        $.ajax({
            url : "${pageContext.request.contextPath}/user/regist",
            type : "GET",
            dataType:"json",
            async: false,
            data : {username:username,password:password,realname:realname,birthday:birthday,email:email},
            success:function (data) {
                if (data !=null){
                    alert("注册成功");
                    return true;
                }else{
                    alert("注册失败")
                }
            }
        })
    }
</script>
</body>
</html>
