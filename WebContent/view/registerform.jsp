<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Register Form</title>
</head>
<body>
<h1>Register Form</h1>
	<table style="border: 3px solid black; paddign: 10px;">
		<tr><td><h4>Enter Information Here</h4></td></tr>
		<form action="/helloMVC/doregister" method="POST">
		<tr>
			<td>���̵�</td><td> <input type="text" name="id"></td></tr>
			<tr>
			<td>��й�ȣ</td><td> <input type="password" name="password"></td>
			</tr>
			<tr>
			<td>�̸�</td><td><input type="text" name="name"></td>
			</tr>
			<tr>
			<td>����</td><td><input type="radio" name="gender" value="male">����<input type="radio" name="gender" value="female">����</td>
			</tr>
			<tr>
			<td>�̸���</td><td><input type="text" name="email"></td>
			</tr>
			<tr>
			<td></td><td><input type="submit" value="register"></td>
			
		</tr>

		</form>
	</table>
</body>
</html>