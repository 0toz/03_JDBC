<%@page import="com.ict.db.DAO" %>
<%@page import="com.ict.db.VO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    String idx = request.getParameter("idx");
    
    VO vo = DAO.getInstance().getDetail(idx);
	request.setAttribute("vo2", vo);    
    //페이지를 이동하면 request정보를 사용하려면
    
    
    %>
    <jsp: forward page="onelist.jsp" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세정보페이지</title>
</head>
<body>

</body>
</html>