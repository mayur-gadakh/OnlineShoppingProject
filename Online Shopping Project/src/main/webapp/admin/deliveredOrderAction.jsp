<%@ page import="Project.connectionProvider"%>
<%@ page import="java.sql.*"%>

<%
try{
String email=request.getParameter("email");
String id=request.getParameter("id");


String status="deliverd";

Connection con=connectionProvider.getCon();
Statement st=con.createStatement();
st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not NULL");
response.sendRedirect("ordersReceived.jsp?msg=deliverd");
}catch(Exception e){
	response.sendRedirect("ordersReceived.jsp?msg=wrong");
	System.out.println(e);
	
}
%>