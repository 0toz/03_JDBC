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
	function delete_ok(f) {

		f.submit();
	}

</script>

</head>
<body>





	<div>
		<h2>방명록</h2>
		<hr>
		<h3>
			<a href="list.jsp?idx=${k.art}">게시물 목록으로</a>
		</h3>
		<form action="" method="post">
			<table>
				<tr>
					<th class="blue">비밀번호</th>
					<td><input type="text" name="pw" value="${vo.pw}" ></td>
				</tr>
			

				<tr>
					<td colspan="2">
						 <input type="button" value="취소" onclick="delete_ok(this.form)"></td>
				</tr>
			</table>



		</form>

	</div>






</body>
</html>