<%@ page import="Project.connectionProvider"%>
<%@ page import="java.sql.*" %>

<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobilenumber=request.getParameter("mobilenumber");
String SecurityQuestion=request.getParameter("SecurityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");

String address="";
String state="";
String country="";



try{
	
	Connection con=connectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,mobilenumber);
	ps.setString(4,SecurityQuestion);
	ps.setString(5,answer);
	ps.setString(6,password);
	ps.setString(7,address);
	ps.setString(8,state);
	ps.setString(9,country);
	ps.executeUpdate();
	
	
	response.sendRedirect("signup.jsp?msg=valid");
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
	
}
%>