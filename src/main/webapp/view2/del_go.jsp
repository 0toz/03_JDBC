<%@page import="com.ict.db2.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
    <%
   request.setCharacterEncoding("utf-8");

    //파라미터값이 VO에 속하면 VO객체를 생성해서 VO객체에 넣자 
    String idx = request.getParameter("idx");
    // DB처리는 항상 DAO
    int result = DAO.getInstance().getDelete(idx);
    //pageContext.setAttribute("result", result);
    if(result>0){
    	response.sendRedirect("list.jsp");
    }
    
%>