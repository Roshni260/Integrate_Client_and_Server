<%@page import="java.sql.Connection, java.sql.DriverManager,java.sql.Statement" %>
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
String mail=request.getParameter("mail");
String mobile=request.getParameter("mobile");
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","roshni26082001");
Statement statement= connection.createStatement();
String query="insert into user(`name`,`password`,`email`,`phone`) values('"+uname+"','"+pwd+"','"+mail+"','"+mobile+"')";
statement.executeUpdate(query);
response.sendRedirect("login.html");
}catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>