<%@page import="java.sql.Connection, java.sql.DriverManager,java.sql.Statement, java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","roshni26082001");
Statement statement= connection.createStatement();
ResultSet set= statement.executeQuery("Select * from user");
int flag=0;
while(set.next()){
	if(uname.equals(set.getString(2))&& pwd.equals(set.getString(3))){
		flag=1;
	}
}
if(flag==1){
	response.sendRedirect("welcome.jsp");
}else{
	response.sendRedirect("login.html");
}
response.sendRedirect("index.html");
}catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>