<%--
  Created by IntelliJ IDEA.
  User: Vicky
  Date: 2017/3/12
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>上传文件</title>
    <base href="<%=basePath%>"></base>
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css" />
</head>
<body>
<div id="formwrapper">
    <h3>上传文件</h3>
    <form action="" method="post" name="apLogin" id="apLogin" enctype="multipart/form-data">
        <fieldset>
            <legend>文件</legend>
            <div>
                <label for="fileName1">文件名 1</label>
                <input type="file" name="fileName1" id="fileName1"  size="50" maxlength="100"/>
                <br/>
            </div>
            <div>
                <label for="fileName2">文件名 2</label>
                <input type="file" name="fileName2" id="fileName2"  size="50" maxlength="100"/>
                <br/>
            </div>
            <div>
                <label for="fileName3">文件名 3</label>
                <input type="file" name="fileName3" id="fileName3"  size="50" maxlength="100"/>
                <br/>
            </div>

        </fieldset>
    </form>
    <br/>
    <h3>补充文件说明</h3>
    <form action="" method="post" name="apForm" id="apForm">
        <fieldset>
            <legend>文件说明</legend>
            <div>
                <label for="direction">说明</label>
                <input type="text" name="direction" id="direction" value="" size="50" maxlength="100" />
                *(最多30个字符)<br/>
            </div>
            <div>
                <input name="submit" type="submit" class="buttom" value="提交" />
                <input name="reset" type="reset" class="buttom" value="重置" />
            </div>
        </fieldset>
    </form>
</div>
</body>
<style type="text/css">
    body {
        font-family: Arial, Helvetica, sans-serif;
        font-size:12px;
        color:#666666;
        background:#fff;
        text-align:center;
    }
    * {
        margin:0;
        padding:0;
    }

    a {
        color:#1E7ACE;
        text-decoration:none;
    }
    a:hover {
        color:#000;
        text-decoration:underline;
    }
    h3 {
        font-size:14px;
        font-weight:bold;
        text-align: left;
    }

    pre,p {
        color:#1E7ACE;
        margin:4px;
    }
    input, select,textarea {
        padding:1px;
        margin:2px;
        font-size:11px;
    }
    .buttom{
        padding:1px 10px;
        font-size:12px;
        border:1px #1E7ACE solid;
        background:#D0F0FF;
        align-items: center;
    }
    #formwrapper {
        width:70%;
        margin:15px auto;
        padding:20px;
        /*text-align:left;*/
        border:1px solid #A4CDF2;
    }
    fieldset {
        padding:10px;
        margin-top:5px;
        border:1px solid #A4CDF2;
        background:#fff;
    }
    fieldset legend {
        color:#1E7ACE;
        font-weight:bold;
        padding:3px 20px 3px 20px;
        border:1px solid #A4CDF2;
        background:#fff;
    }
    fieldset label {
        float:left;
        width:120px;
        text-align:right;
        padding:4px;
        margin:1px;
    }
    fieldset div {
        clear:left;
        margin-bottom:2px;
    }
    .enter{ text-align:center;}
    .clear {
        clear:both;
    }
</style>
</html>
