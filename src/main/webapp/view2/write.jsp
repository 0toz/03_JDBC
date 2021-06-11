
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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

input{ padding : 5px;}
</style>

<script type="text/javascript">
	function write_go(f) {
		f.action = "write_go.jsp";
		f.submit();
	}
	function del_go(f) {
		f.action = "del.jsp";
		f.submit();
	}
</script>

</head>
<body>





	<div>
		<h2>방명록: 작성화면</h2>
		<hr>
		<h3>
			<a href="list.jsp">게시물 목록으로</a>
		</h3>
		<form method="post">
			<table>
				<tr>
					<th class="blue">번호</th>
					<td><input type="text" name="idx" value="${vo.idx}" readonly></td>
				</tr>
				<tr>
					<th class="blue">작성자</th>
					<td><input type="text" name="name" value="${vo.name}"></td>
				</tr>
				<tr>
					<th class="blue">제목</th>
					<td><input type="text" name="art" value="${vo.art}"></td>
				</tr>
				<tr>
					<th class="blue">email</th>
					<td><input type="text" name="email" value="${vo.email}" ></td>
				</tr>
				<tr>
					<th class="blue">비밀번호</th>
					<td><input type="text" name="pw" value="${vo.pw}" ></td>
				</tr>
				<tr >
					<td colspan="2"><textarea rows="10" cols="50" name="text" > </textarea></td>
				</tr>

			

				<tr>
					<td colspan="2"><input type="button" value="저장"
						onclick="write_go(this.form)">&nbsp;
						 <input type="button" value="취소" onclick="del_go(this.form)"></td>
				</tr>
			</table>



		</form>

	</div>






</body>
</html>