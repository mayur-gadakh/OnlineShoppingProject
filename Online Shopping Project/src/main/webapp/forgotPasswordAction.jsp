<%@ page import="Project.connectionProvider"%>
<%@ page import="java.sql.*"%>

<%
String email = request.getParameter("email");
String mobilenumber = request.getParameter("number");
String SecurityQuestions = request.getParameter("SecurityQuestion");
String answer = request.getParameter("answer");
String newpassword = request.getParameter("newpassword");
int chec = 0;
try {

	Connection con = connectionProvider.getCon();

	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from users where email='" + email + "' and mobilenumber='" + mobilenumber
	+ "' and SecurityQuestions='" + SecurityQuestions + "' and answer='" + answer + "'");

	while (rs.next()) {
		chec = 1;
		st.executeUpdate("update users set password='" + newpassword + "' where email='" + email + "' ");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	if (chec == 0) {
		response.sendRedirect("forgotPassword.jsp?msg=invalid");
	}
} catch (Exception e) {
	System.out.println(e);
}
%>