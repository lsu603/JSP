<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title></head>
<body>
<%@ page import="java.net.URLEncoder" %>
<%
    String name = URLEncoder.encode("김철수", "utf-8");
    int age = 20; // ...jsp?변수=값&변수=값
    response.sendRedirect(
            "responseRedirected.jsp?name=" + name + "&age=" + age); %>
</body>
</html>