<%@ page import="Project.connectionProvider"%>
<%@ page import="java.sql.*" %>

<%
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
String incdec=request.getParameter("quantity");

int price=0;
int quantity=0;
int total=0;
int final_quantity=0;

try{

	Connection con=connectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from cart where product_id='"+id+"' and email='"+email+"' and address is NULL ");
	while(rs.next()){
		price=rs.getInt(4);
		quantity=rs.getInt(3);
		total=rs.getInt(5);
		
	}
		if(quantity==1 && incdec.equals("dec"))
			response.sendRedirect("myCart.jsp?msg=notPossible");
		else if(quantity !=1 && incdec.equals("dec")){
			total=total-price;
			quantity=quantity-1;
			st.executeUpdate("update cart set total='"+total+"' ,quantity='"+quantity+"' where email='"+email+"' and product_id='"+id+"' and address  is NULL");
			response.sendRedirect("myCart.jsp?msg=dec");
		}
		else{
			total=total+price;
			quantity=quantity+1;
			st.executeUpdate("update cart set total='"+total+"' ,quantity='"+quantity+"' where email='"+email+"' and product_id='"+id+"' and address  is NULL");
			response.sendRedirect("myCart.jsp?msg=inc");
			
		}
				
	
	
}catch(Exception e){
	System.out.println(e);
}



%>