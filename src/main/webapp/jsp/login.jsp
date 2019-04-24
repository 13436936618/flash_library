<%--
  Created by IntelliJ IDEA.
  User: AERO
  Date: 2019/4/20
  Time: 17:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>登录</title>

    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <style>
        html,
        body {
            height: 100%;
        }

        body {
            display: -ms-flexbox;
            display: -webkit-box;
            display: flex;
            -ms-flex-align: center;
            -ms-flex-pack: center;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: center;
            justify-content: center;
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
        }
        .form-signin .checkbox {
            font-weight: 400;
        }
        .form-signin .form-control {
            position: relative;
            box-sizing: border-box;
            height: auto;
            padding: 10px;
            font-size: 16px;
        }
        .form-signin .form-control:focus {
            z-index: 2;
        }
        .form-signin input[type="text"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }
        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }
    </style>
</head>
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<body class="text-center">
<form class="form-signin" action="${pageContext.request.contextPath}/user/login">
    <h1 class="h3 mb-3 font-weight-normal">登录</h1>
    <br>
    <label for="username" class="sr-only">用户名</label>
    <input type="text" id="username" name="username" class="form-control" placeholder="请输入用户名" required autofocus>
    <label for="password" class="sr-only">密码</label>
    <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码" required>
    <div class="checkbox mb-3">
        <label>
            <input type="checkbox" value="remember-me">记住用户名与密码
        </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit" id="login">登录</button>
    <br>
    <a href="${pageContext.request.contextPath}/jsp/regist.jsp" class="text-center">前往注册</a>
    <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
</form>
<script>

</script>
</body>
</html>
