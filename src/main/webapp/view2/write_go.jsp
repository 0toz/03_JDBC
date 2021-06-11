<%@page import="com.ict.db2.DAO"%>
<%@page import="com.ict.db2.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
    <%
   request.setCharacterEncoding("utf-8");

    //파라미터값이 VO에 속하면 VO객체를 생성해서 VO객체에 넣자 
	VO vo = new VO();
    vo.setName(request.getParameter("name"));
    vo.setArt(request.getParameter("art"));
    vo.setEmail(request.getParameter("email"));
    vo.setText(request.getParameter("text"));
    vo.setPw(request.getParameter("pw"));
    // DB처리는 항상 DAO
    int result = DAO.getInstance().getInsert(vo);
    //pageContext.setAttribute("result", result);
    if(result>0){
    	response.sendRedirect("list.jsp");
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