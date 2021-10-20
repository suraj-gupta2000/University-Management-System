

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

    String userid=request.getParameter("userid");
    String password=request.getParameter("password");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mmmutdb","root","");
    String sql="select password from adminlogin where userid='"+userid+"'";
    PreparedStatement ps=con.prepareStatement(sql);
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
      //here we get the value of password and match it with entered password
        String respassword =rs.getString("password");
        if(password.equals(respassword)){
          // out.print("<script>alert('Valid User'); window.location.href='login.jsp';</script>");
            session.setAttribute("userid",userid);
            response.sendRedirect("adminzone/adminhome.jsp");
        }
        else{
          out.print("<script>alert('Invalid User'); window.location.href='login.jsp';</script>");
        }
    }
    else{
     out.print("<script>alert('User does not exits'); window.location.href='login.jsp';</script>");
    }
%>