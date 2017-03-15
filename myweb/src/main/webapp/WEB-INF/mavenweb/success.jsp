<%--
  Created by IntelliJ IDEA.
  User: Vicky
  Date: 2017/3/9
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://" +request.getServerName()+":" +request.getServerPort()+path+"/" ;
%>   
<base href="<%=basePath%>" > 

<html>
<head>
    <title>登陆成功</title>
</head>
<body>
    登陆成功<br>
    转向<a href="<%=basePath%>web/uploadfile.jsp">上传文件</a><br>   <!-- 这里的地址怎么办-->
   <%-- <jsp:forward page="<%=basePath%>uploadfile.jsp">上传</jsp:forward>--%>
</body>
</html>
