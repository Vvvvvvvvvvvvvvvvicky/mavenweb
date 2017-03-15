<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    /*div.line{}*/
</style>
<script>
    function reload() {
        document.getElementById('btn').disabled = true;
        document.getElementById('identity').src = 'identity?ts=' + new Date().getTime();
    }
</script>
<body>
<%--<%@include file="head.jsp"%>--%>
<jsp:include page="head.jsp"></jsp:include>
<div>
    <fieldset style="width: 80%;left: 10%;right: 10%">
        <legend style="left:20%">登陆</legend><br>
        <form action="login" method="post">
            姓名：<input type="text" name="name" style="width: 300px;"/><br>
            密码：<input type="password" name="pwd" style="width: 300px;"/><br>
            <img src="identity" id="identity" onload="btn.disabled = false;"/>
            <input type="button" id="btn" value="换个图片" onclick="reload()"/><br>
            <input type="submit" value="登陆" style="width: 500px;"/>
        </form>
    </fieldset>
</div>
<%--<%@include file="foot.jsp"%>--%>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>
