<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: AERO
  Date: 2019/4/20
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Navbar Template for Bootstrap</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
    <!-- Custom styles for this template -->

</head>
<style>
    image{
        max-width: 400px;
        height: auto;
    }
</style>
<body>
<header>
    <div class="container">
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
            <h5 class="my-0 mr-md-auto font-weight-normal">
                <a href="${pageContext.request.contextPath}/jsp/index1.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mr-2"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path><circle cx="12" cy="13" r="4"></circle></svg>
                    <strong>图片库</strong>
                </a>
            </h5>
            <nav class="my-2 my-md-0 mr-md-3">
                <a class="p-2 text-dark" href="${pageContext.request.contextPath}/jsp/index1.jsp">主页</a>
                <a class="p-2 text-dark" href="${pageContext.request.contextPath}/jsp/music_index.jsp">音频</a>
                <a class="p-2 text-dark" href="${pageContext.request.contextPath}/jsp/video_index.jsp">视频</a>
                <a class="p-2 text-dark" href="${pageContext.request.contextPath}/jsp/image_index.jsp">图片</a>
                <a class="p-2 text-dark" href="#">个人资料</a>
            </nav>
            <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/jsp/login.jsp">注销</a>
        </div>
    </div>

</header>


<main role="main">

    <section class="jumbotron text-center">
        <div class="container">
            <h1 class="jumbotron-heading"><a href="${pageContext.request.contextPath}/jsp/image_input.jsp">去上传图片</a></h1>
            <p class="lead text-muted">可以上传你平时的照片，请注意上传图片的大小不要大于5M</p>
            <c:forEach items="${lists}" var="image">
                <div class="row">
                    <div class="col-sm-6 col-md-12">
                        <div class="thumbnail">
                            <p><img alt="" class="img-responsive center-block" width="200" height="200"  src="/image_location/${image.image}" id="images"></p>
                            <hr>
                            <div class="caption">
                                <h3><span>图片编号:</span>${image.id}</h3>
                                <p>${image.imagename}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>
<div class="container">
    <h2><a href="${pageContext.request.contextPath}/image/selectimage/${user.id}">点击查看图片列表</a></h2>
    <div class="table-responsive">
        <table class="table table-striped table-sm">
            <thead>
            <tr>
                <th>图片名称</th>
                <th>图片编码</th>
                <th>上传日期</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${image}" var="obj">
                <tr>
                    <td>${obj.imagename}</td>
                    <td>${obj.image}</td>
                    <td><fmt:formatDate value="${obj.inputdate}"></fmt:formatDate></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/image/listImages/${obj.id}&${obj.sid}">显示</a>&nbsp&nbsp&nbsp
                        <a href="${pageContext.request.contextPath}/image/delete/${obj.id}&${obj.sid}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</main>

<%--<footer class="text-muted">
    <div class="container">
        <p class="float-right">
            <a href="#">Back to top</a>
        </p>
        <p>Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
        <p>New to Bootstrap? <a href="../../">Visit the homepage</a> or read our <a href="../../getting-started/">getting started guide</a>.</p>
    </div>
</footer>--%>
<!-- Bootstrap core JavaScript
================================================== -->
</html>
