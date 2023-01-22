
<%@ page import="Project.connectionProvider"%>
<%@ page import="java.sql.*" %>

<%

try{
	
	Connection con=connectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="create table users(name varchar(100),email varchar(200)primery key,mobileNumber bigInt,SecurityQuestions varchar(200),answer varchar(200),password varchar(20),address varchar(50),state varchar(20),country varchar(20))";
	String q2="create table products(id int ,name varchar(500),category varchar(100),price int ,active varchar(10))";
	String q3="create table cart(email varchar(30),product_id int,quantity int ,price int,total int , address varchar(500),city varchar(100),state varchar(100),country varchar(100),mobileNumber bigint,	OrderDate varchar(20),DeliveryDate varchar(20),paymentMethod varchar(100),transactionId varchar(100),status varchar(20))";

//	st.execute(q1);
//	st.execute(q2);
st.execute(q3);
	System.out.println("Table Created");
	con.close();
}
catch(Exception e){
	System.out.println(e);
}

%>
