<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
   String id=request.getParameter("id");
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mmmutdb", "root", "");
   String query="delete from notification where id='"+id+"'";
   PreparedStatement ps = con.prepareStatement(query);
   if(ps.executeUpdate()>0){
       out.print("<script>alert('Notification is deleted');window.location.href='adminhome.jsp'</script>");
   }
   else{
       out.print("<script>alert('Notification is not deleted');window.location.href='adminhome.jsp'</script>");
   }

%>