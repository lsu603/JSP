<%--
  Created by IntelliJ IDEA.
  User: lsu60
  Date: 2019-07-22
  Time: 오후 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="book.BookDAO" %>
<%@ page import="book.BookDTO" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>도서목록</h2>

<table border="1">
    <tr>
        <td>도서코드</td>
        <td>도서명</td>
        <td>저자</td>
        <td>단가</td>
        <td>수량</td>
    </tr>
    <% BookDAO dao = new BookDAO();
        //dao 객체 생성
        List<BookDTO> items = dao.bookList();
        //book 테이블의 모든 레코드를 List 에 담아서 리턴
        for (int i = 0; i < items.size(); i++) {
            // 리스트.size() 리스트에 저장된 데이터의 갯수
            BookDTO dto = items.get(i); // 리스트.get(i) i 번째 요소 조회
    %>
    <tr>
        <td><%=dto.getId()%>
        </td>
        <td><%=dto.getTitle()%>
        </td>
        <td><%=dto.getAuthor()%>
        </td>
        <td><%=dto.getPrice()%>
        </td>
        <td><%=dto.getQty()%>
        </td>
    </tr>
    <%
        } //반복문의 끝
    %></table>

</body>
</html>
