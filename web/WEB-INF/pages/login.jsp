<%--
  Created by IntelliJ IDEA.
  User: lj
  Date: 2018/12/4
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>登录页面</title>

    <style>
        body  {background-image:url("2.jpg");}

        /*设置div内容区的边框*/
        div{

           border:5px;
            border-color:green;
             border-style: solid;
        }
        p{

        }
       form{
            /*简洁设置顺序像素(线条粗细） 样式 颜色*/
            border:5px solid red;
            border-bottom: 2px solid blue;
        }

    </style>

</head>
<body>
<div style="font-size: 100px">图书管理系统登陆</div>
<br><br><br>

<br><br><br>
<center>
<form action="/login">
    用户名:<input type="text" name="uname"><br>
    密  码：<input type="password" name="pwd"><br>
    验证码：<input type="password" name="pwd1"><br>
    <input type="submit" value="Login"><br>

</form>

    <div align="right">
    <br><br> <br>
        <p style="font-size: 50px" >读书是人类进步的阶梯</p>
        <br><br><br>
       </div>
    <hr>
    <p>没有账号，联系我注册，over</p>


</center>
</body>
</html>