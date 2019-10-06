<%-- 
    Document   : sample
    Created on : Dec 18, 2014, 11:50:03 AM
    Author     : JP-PC9
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="action.Database"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
		try{
		String name = session.getAttribute("n1").toString();
		
		if(name!=null){
		%>
		
		<%
		String id=request.getParameter("id");
            
            Connection con = Database.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from product where id='" + id + "'");
			int getcost = 0;
            int total = 0;
            String status = "NO";
            
            int i=0;      

		   if (rs.next()) {
			   String pname = rs.getString("pname");
            System.out.println("Pname " + pname);
            String pitems = rs.getString("pitems");
            System.out.println("Pitems " + pitems);
            String bname = rs.getString("bname");
            System.out.println("Bname " + bname);
            String price = rs.getString("price");
            System.out.println("Price " + price);
            String qty = "1";
            System.out.println("Qty " + qty);     
                getcost = rs.getInt("price");
            
            int qty1 = Integer.parseInt(qty);
            total = qty1 * getcost;
            System.out.println("Total " + total);
             i = st.executeUpdate("insert into cart (name, productname, productitem, quantity, total,status) values('" + name + "','" + pname + "','" + pitems + "','" + qty + "','" + total + "','" + status + "')");
            }
			if (i != 0) {
                response.sendRedirect("uview.jsp?kk=null");
                System.out.println("Cart Add Success");
            } else {
                response.sendRedirect("uview.jsp?mm=null");
                System.out.println("Cart Add Failed");
            }
		}
		else{
			response.sendRedirect("index.jsp?nsg=null");
		}
		}
		catch(Exception e){
			response.sendRedirect("index.jsp?nsg=null");
		}
        %>
    </body>
</html>
