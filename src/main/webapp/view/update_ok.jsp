<%@page import="com.ict.db.DAO"%>
<%@page import="com.ict.db.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("utf-8");
    VO vo = new VO();
    vo.setIdx(request.getParameter("idx"));
    vo.setName(request.getParameter("name"));
    vo.setAge(request.getParameter("age"));
    vo.setAddr(request.getParameter("addr"));
    
    int result = DAO.getInstance().getUpdate(vo);
    response.sendRedirect("detail.jsp?idx="+vo.getIdx());
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>