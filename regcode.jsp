

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String address=request.getParameter("address");
String contactno=request.getParameter("contactno");
String emailaddress=request.getParameter("emailaddress");
String panno=request.getParameter("panno");
String aadharno=request.getParameter("aadharno");
String dob=request.getParameter("dob");
String password=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mmmutdb", "root", "");

String sql = "insert into userinfo values('"+name+"', '"+gender+"', '"+address+"', '"+contactno+"', '"+emailaddress+"', '"+panno+"', '"+aadharno+"', '"+dob+"', '"+password+"')";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.executeUpdate();
    con.close();
    
        out.print("<script>alert('Registration is done'); window.location.href='registration.jsp';</script>");
%>
