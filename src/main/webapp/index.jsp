<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>资源仓库</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        html {
            font-size: 14px;
        }
        @media (min-width: 768px) {
            html {
                font-size: 16px;
            }
        }

        .container {
            max-width: 960px;
        }

        .pricing-header {
            max-width: 700px;
        }

        .card-deck .card {
            min-width: 220px;
        }

        .border-top { border-top: 1px solid #e5e5e5; }
        .border-bottom { border-bottom: 1px solid #e5e5e5; }

        .box-shadow { box-shadow: 0 .25rem .75rem rgba(0, 0, 0, .05); }
    </style>
</head>

<body>

<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
    <h5 class="my-0 mr-md-auto font-weight-normal">资源仓库</h5>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="#">音频</a>
        <a class="p-2 text-dark" href="#">视频</a>
        <a class="p-2 text-dark" href="#">图片</a>
        <a class="p-2 text-dark" href="#">个人资料</a>
    </nav>
    <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/jsp/login.jsp">登录/注册</a>
</div>

<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
    <h1 class="display-4">分类</h1>
    <p class="lead">快速进入</p>
</div>

<div class="container">
    <div class="card-deck mb-3 text-center">
        <div class="card mb-4 box-shadow">
            <div class="card-header">
                <h4 class="my-0 font-weight-normal">图片</h4>
            </div>
            <div class="card-body">
                <h1 class="card-title pricing-card-title">$0</h1>
                <ul class="list-unstyled mt-3 mb-4">
                    <li>免费上传图片</li>
                    <li>2GB存储空间</li>
                    <li>管理图片分类</li>
                    <li>图片与用户绑定</li>
                </ul>
                <button type="button" class="btn btn-lg btn-block btn-outline-primary" id="btn1">start</button>
            </div>
        </div>
        <div class="card mb-4 box-shadow">
            <div class="card-header">
                <h4 class="my-0 font-weight-normal">音频</h4>
            </div>
            <div class="card-body">
                <h1 class="card-title pricing-card-title">$15 </h1>
                <ul class="list-unstyled mt-3 mb-4">
                    <li>免费上传音频</li>
                    <li>10GB存储空间</li>
                    <li>管理音频分类</li>
                    <li>音频与用户绑定</li>
                </ul>
                <button type="button" class="btn btn-lg btn-block btn-outline-primary" id="btn2">start</button>
            </div>
        </div>
        <div class="card mb-4 box-shadow">
            <div class="card-header">
                <h4 class="my-0 font-weight-normal">视频</h4>
            </div>
            <div class="card-body">
                <h1 class="card-title pricing-card-title">$29</h1>
                <ul class="list-unstyled mt-3 mb-4">
                    <li>免费上传视频</li>
                    <li>20GB存储空间</li>
                    <li>管理视频分类</li>
                    <li>视频与用户绑定</li>
                </ul>
                <button type="button" class="btn btn-lg btn-block btn-outline-primary" id="btn3">start</button>
            </div>
        </div>
    </div>


</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>


    var btn1 = document.getElementById('btn1');
    var btn2 = document.getElementById('btn2');
    var btn3 = document.getElementById('btn3');
    btn1.onclick=function () {
        alert("请先登录")
    };
    btn2.onclick=function () {
        alert("请先登录")
    };
    btn3.onclick=function () {
        alert("请先登录")
    }
</script>
</body>
</html>

