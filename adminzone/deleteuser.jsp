
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String email=request.getParameter("email");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mmmutdb","root","");
String query="delete from userinfo where emailaddress='"+email+"'";
   PreparedStatement ps=con.prepareStatement(query);
   if(ps.executeUpdate()>0){
       out.print("<script>alert('User is deleted');window.location.href='usermgmt.jsp'</script>");
   }
   else{
       out.print("<script>alert('User is not deleted');window.location.href='usermgmt.jsp'</script>");
   }

    
%>