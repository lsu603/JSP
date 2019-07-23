<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDateTime" %><%--
  Created by IntelliJ IDEA.
  User: lsu60
  Date: 2019-07-22
  Time: 오전 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title></head> <!-- color.jsp에서 선언한 변수를 사용할 수 있음 -->
<body bgcolor="<%=bodyback_c%>">
<% LocalDateTime nowDate = LocalDateTime.now();
    out.println(nowDate + "<br>");
    //웹브라우저에 출력, <br> 줄바꿈 태그
    // Date 형식을 String 형식으로 변환하기 위한 코드

    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    String formatDate = nowDate.format(formatter); %> 현재 날짜는 <%=formatDate%>입니다.
</body>
</html>