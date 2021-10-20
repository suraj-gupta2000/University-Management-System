
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% 
//     here you can write java code
    
    String name = request.getParameter("name");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String contactno=request.getParameter("contactno");
    String emailaddress=request.getParameter("emailaddress");
    String enquirytext=request.getParameter("enquirytext");
    
    //code for database connectivity
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mmmutdb", "root", "");
    String sql = "insert into enquiry(name,gender,address,contactno,emailaddress,enquirytext) values('"+name+"', '"+gender+"', '"+address+"', '"+contactno+"', '"+emailaddress+"', '"+enquirytext+"')";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.executeUpdate();
    con.close();
   // out.print("<h1>Your Enquiry is saved</h1>");
    out.print("<script>alert('Your enquiry is saved'); window.location.href='contactus.jsp';</script>");
%>