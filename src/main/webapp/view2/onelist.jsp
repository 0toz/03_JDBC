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
</style>

<script type="text/javascript">
	function write_go(f) {
		f.action = "write.jsp";
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
		<h2>방명록 : 내용화면</h2>
		<hr>
		<h3>
			<a href="list.jsp?idx=${k.art}">게시물 목록으로</a>
		</h3>
		<form action="" method="post">
			<table>
				<tr>
					<th class="blue">번호</th>
					<th>${k.idx}</th>
				</tr>
				<tr>
					<th class="blue">작성자</th>
					<th>${k.idx}</th>
				</tr>
				<tr>
					<th class="blue">제목</th>
					<th>${k.idx}</th>
				</tr>
				<tr>
					<th class="blue">email</th>
					<th>${k.idx}</th>
				</tr>
				<tr >
					<td colspan="2" style="text-align: left;">${k.text}</td>
				</tr>

			

				<tr>
					<td colspan="2"><input type="button" value="수정"
						onclick="write_go(this.form)">&nbsp; <input type="button"
						value="삭제" onclick="del_go(this.form)"></td>
				</tr>
			</table>

		</form>

	</div>






</body>
</html>