<%@page import="java.util.List"%>
<%@page import="com.ict.db2.DAO"%>
<%@page import="com.ict.db2.VO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
List<VO> list = DAO.getInstance().getSelectAll();
pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>list페이지</title>
<style type="text/css">
div {
	text-align: center;
	margin: 100px;
	auto;
}

table, th, td {
	padding: 10px 5px;
	border: 1px solid black;
	border-collapse: collapse;
	width: 700px;
	margin: auto;
}

.blue {
	background-color: skyblue;
}
</style>
</head>
<body>

	<div>
		<h2>방명록</h2>
		<hr>
		<h3>
			<a href="write.jsp">방명록 쓰기</a>
		</h3>
		<form  method="post">
			<table>
				<thead class="blue" style="font-weight: bold;">
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>제목</th>
						<th>작성일</th>
					</tr>
				</thead>

				<tbody>
					<c:choose>
						<c:when test="${empty list}">
							<tr>
								<td colspan="4">
									<h2>원하는 정보가 존재하지 않습니다.</h2>
								</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="k" items="${list}" varStatus ="vs">
								<tr>
									<td>${vs.count}</td>
									<td>${k.name }</td>
									<td><a href="onelist.jsp?idx=${k.idx}">${k.art}</a></td>
									<td>${k.reg.substring(0,10)}</td>
									</tr>
							</c:forEach>
						</c:otherwise>

					</c:choose>

					

				</tbody>

			</table>

		</form>

	</div>


</body>
</html>