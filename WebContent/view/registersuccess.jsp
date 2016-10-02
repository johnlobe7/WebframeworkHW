<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>Register success!!</h2>
 	<ul>
 		<li>Id : ${customer.id}</li>
 		<li>Password : ${customer.password}</li>
 		<li>Name : ${customer.name}</li>
 		<li>Gender : ${customer.gender}</li>
 		<li>E-mail : ${customer.email}</li>
 	</ul>
 <p><a href = "/helloMVC3/home?action=login">go to login page</a></p>
</body>
</html>