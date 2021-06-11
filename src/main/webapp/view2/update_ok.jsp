<%@page import="com.ict.db2.DAO"%>
<%@page import="com.ict.db2.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
    request.setCharacterEncoding("utf-8");
    VO vo = new VO();
    vo.setIdx(request.getParameter("idx"));
    vo.setName(request.getParameter("name"));
    vo.setArt(request.getParameter("art"));
    vo.setEmail(request.getParameter("email"));
    vo.setText(request.getParameter("text"));
    vo.setPw(request.getParameter("pw"));
    
    int result = DAO.getInstance().getUpdate(vo);
    if(result>0){
    	response.sendRedirect("onelist.jsp?idx="+vo.getIdx());
    }
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