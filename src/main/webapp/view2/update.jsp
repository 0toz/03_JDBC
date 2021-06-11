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
	function save_go(f) {
	
		if(f.pw.value == "${vo.pw}"){
			alert("수정하기")
			f.submit();
		}else{
			alert("비밀번호 틀림")
			f.pw.value="";
			f.pw.focus();
			return;
		}
	}
	
	function back_go(f) {
		history.go(-1);
	}
</script>

</head>
<body>





	<div>
		<h2>방명록 : 수정화면</h2>
		<hr>
		<h3>
			<a href="list.jsp?idx=${k.art}">게시물 목록으로</a>
		</h3>
		<form action="" method="post">
			<table>
				<tr>
					<th class="blue">번호</th>
					<td><input type="text" name="idx" value="${vo.idx}" readonly></td>
				</tr>
				<tr>
					<th class="blue">작성자</th>
					<td><input type="text" name="name" value="${vo.name}" readonly></td>
				</tr>
				<tr>
					<th class="blue">제목</th>
					<td><input type="text" name="art" value="${vo.art}"></td>
				</tr>
				<tr>
					<th class="blue">email</th>
					<td><input type="text" name="email" value="${vo.email}" readonly></td>
				</tr>
				<tr >
					<td colspan="2"><input type="text" name="text" value="${vo.text}" ></td>
				</tr>

			

				<tr>
					<td colspan="2"><input type="button" value="저장"
						onclick="save_go(this.form)">&nbsp;
						 <input type="button" value="취소" onclick="back_go(this.form)"></td>
				</tr>
			</table>



		</form>

	</div>






</body>
</html>