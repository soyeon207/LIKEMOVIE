<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="user.UserDAO" %>

<%
	
	request.setCharacterEncoding("UTF-8");
	String userName = request.getParameter("userName");
	String userID = request.getParameter("userID");
	String userPassword = request.getParameter("userPassword");
	
	UserDAO userDAO = new UserDAO();
	int result=userDAO.join(userName,userID,userPassword);
	
	if(result==-1){
		%> <script> history.back(); alert("이미 존재하는 아이디입니다"); </script><% 
	}
	else {
		%><script> history.back(); alert("회원가입 성공 !"); </script><% 
	}

%>

</body>
</html>