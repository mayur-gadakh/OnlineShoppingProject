<%@ page import="Project.connectionProvider"%>
<%@ page import="java.sql.*"%>

<%
String email=session.getAttribute("email").toString();
String oldPassword=request.getParameter("oldPassword");
String newPassword=request.getParameter("newPassword");
String confirmPassword=request.getParameter("confirmPassword");
System.out.println(oldPassword);
System.out.println(newPassword);
System.out.println(confirmPassword);
if(!confirmPassword.equals(newPassword))
	response.sendRedirect("changePassword.jsp?msg=notMatch");
else{
	
	int che=0;
	try{
		Connection con=connectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+oldPassword+"'");
		while(rs.next()){
			che=1;
			st.executeUpdate("update users set password='"+newPassword+"' where email='"+email+"'");
			response.sendRedirect("changePassword.jsp?msg=done");

		}
		if(che==0){
			
			response.sendRedirect("changePassword.jsp?msg=wrong");

		}
				
		
	}catch(Exception e){
		System.out.println(e);
		

	}
}


%>