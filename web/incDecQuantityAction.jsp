<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<% 
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
String incdec=request.getParameter("quantity");
int price=0;
int total=0;
int quantity=0;
int final_total=0;
try{
ConnectionProvider conProvider =new ConnectionProvider();
	Connection con=conProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from cart where email='"+email+"' and product_id='"+id+"' and address is NULL");
	while(rs.next()){
        price=rs.getInt(4);
		total=rs.getInt(5);
		quantity=rs.getInt(3);
	}
    