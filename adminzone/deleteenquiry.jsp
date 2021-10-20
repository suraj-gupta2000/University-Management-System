<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
   String id=request.getParameter("id");
   Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mmmutdb", "root", "");
   String query="delete from enquiry where id='"+id+"'";
   PreparedStatement ps=con.prepareStatement(query);
   if(ps.executeUpdate()>0){
       out.print("<script>alert('Enquiry is deleated');window.location.href='enquirymgmt.jsp'</script>");
   }
   else{
       out.print("<script>alert('Enquiry is not deleated');window.location.href='enquirymgmt.jsp'</script>");
   }
%>
