<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: thuan
  Date: 2/10/2023
  Time: 8:12 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
  Map<String,String> dic=new HashMap<>();
%>
<%
  dic.put("hello", "Xin chào");
  dic.put("how", "Thế nào");
  dic.put("book", "Quyển vở");
  dic.put("computer", "Máy tính");
  String search=  request.getParameter("tudien");
  String result=dic.get(search);
  if(result!=null){
    out.println("word: "+search);
    out.println("result: "+result);
  }else {
    out.println("Not found");
  }
  %>
%>
</body>
</html>
