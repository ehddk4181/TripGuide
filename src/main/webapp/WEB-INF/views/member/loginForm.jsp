<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>loginForm</title>
<script src="/project/resources/js/jquery-3.4.1.js"></script>
<script>
	
</script>
</head>
<body>
	<h2>[ 로그인(임시) ]</h2>
	
	<div>
		<form id="loginForm" action="/project/member/login" method="get">
			<div>
				<table>
					<tr>
						<td>
							아이디<input type="text" id="memberId" name="memberId"><br>
							비밀번호<input type="password" id="memberPassword" name="memberPassword"><br>
							<input type="submit" id="btn1" value="로그인">
						</td>
					</tr>
				</table>
			</div>			
		</form>
	</div>
	
</body>
</html>