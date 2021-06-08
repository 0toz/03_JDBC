<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String idx = request.getParameter("idx");
	String pw = request.getParameter("pw");

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	fieldset {
	width: 300px; margin: auto;
}
div{text-align: center;; margin: 100px; auto;}
table, th,td{
	padding : 10px 5px;
	border: 1px solid black;
	border-collapse: collapse;
	width : 300px;
	margin: auto;
}	
input{
   padding : 10px;
}
</style>

<script type="text/javascript">
function delete_ok(f){
	if("${param.pw}"== r.pw.value){
		var chk = confirm("정말 삭제합니까?");
		if(chk){
			f.action="delete_ok.jsp";
			f.submit();
		}else{
			history.go(-1);
		}
	}else{
			alert("비밀번호 틀림");
			f.pw.value="";
			f.pw.focus();
			return;
		}
		
	}
	
	
	
	
}

</script>
</head>
<body>
<div>
		<form action="join_ok.jsp" method="post">
				<h2>개인정보 보기</h2>
				<fieldset>
	
					
					<legend>삭제하기 </legend>
						비밀번호 :	<input type="password"	name="pw" placeholder="비밀번호입력"> 				
					<input type= "button" value="삭제하기" onclick="delete_ok(this.form)">
					<input type= "hidden" name="idx" value="${param.idx }" >
					

				</fieldset>
		</form>
	</div>
</body>
</html>