<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
  String id=request.getParameter("id");
  String notificationtext=request.getParameter("notificationtext");
  Date d=new Date();
  SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
  String notificationdate=df.format(d);
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mmmutdb", "root", "");
  String query="update notification set notificationtext='"+notificationtext+"', notificationdate='"+notificationdate+"' where id='"+id+"'";
  PreparedStatement ps = con.prepareStatement(query);
  if(ps.executeUpdate()>0){
      out.print("<script>alert('Notification is updated');window.location.href='adminhome.jsp';</script>");
  }
  else{
      out.print("<script>alert('Notification is not updated');window.location.href='adminhome.jsp';</script>");
  }

%>