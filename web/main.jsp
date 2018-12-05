<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lj
  Date: 2018/12/4
  Time: 8:53
  To change this template use File | Settings | File Templates.
  jsp标签支持自定义标签--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--c标签--%>
<c:out value="都行"/>
<c:out value="<a> 测试</a>"/>
<%--//转译--%>
<c:out value="<a>测试2</a>" escapeXml="false"/>
<%--输出一个符号--%>
&lt
<br>
<%--设置变量--%>
<c:set var="m" value="sf"/>
<%--/输出set  m值--%>
${m}
<hr>
<%--page域 将n值放在page域--%>
<c:set var="n" value="ksadfg" scope="page"/>
${n}
<hr>
<c:set var="se" value="ssss" scope="session"/>
<p>se值:${se}</p>
<div>
    <a href="index.jsp">test1</a>
</div>
<hr>
<%--移除se值--%>
<c:remove var="se"/>
输出:${se}
<hr>
<p>流程控制 判断成功失败</p>
<%--写入var=re判断结果并1--%>
<c:if test="${1>0}" var="re">
kasd
</c:if>
<p>结果：${re}</p>
<hr>
<p>
    流程控制:choose when outherwise
</p>
<%--成绩判断
 <input type="text"><br>
  <input type="submit" value="提交">

--%>
<%--<c:set var="score"  value="91"/>--%>
<input type="number" id="score">
<input type="submit" value="提交">
<c:choose>
    <c:when test="${score>=90}">
    你作弊了吗
    </c:when>
    <c:when test="${score>=80 && score<=90}">
    良好
    </c:when>
    <c:when test="${score>=60 && score<=800}">
    及格
    </c:when>
    <c:otherwise>
     你没作弊吗
    </c:otherwise>
</c:choose>
<%--c:forEach循环--%>
<hr>
<%--使用java、创建容器list（数组）--%>
<%
List<String> list=new ArrayList<>();
    list.add("wan3");
    list.add("wan2");
    list.add("wan1");
    //将list添加入requset域
    request.setAttribute("li",list);
%>
${li}
<c:forEach var="obj" items="${li}">
    <p>${obj}</p>
</c:forEach>
<hr>
<%--计数循环--%>
<c:forEach var="obj" items="${li}"
     begin="0" end="2" step="2" varStatus="t">
    ${t.index}
    <p>${obj}</p>
</c:forEach>


<hr>
<div>
    <a href="index.jsp">test</a>
</div>


</body>

</html>
