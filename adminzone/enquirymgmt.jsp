
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%
    if(session.getAttribute("userid")==null)
    {
      response.sendRedirect("../login.jsp");
    }
    else{
        
    
 %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #wrapper{
                width: 1000px;
                height: auto;
                min-height: 1000px;
                margin: 0 auto;
                //border: 1px solid white;
            }
            #header{
                width: 1000px;
                height: 150px;
                background-color: navy;
                color: white;
                font-size: 80px;
                text-align: center;   //horizontly center
                line-height: 150px;  // vertically center
                
            }
            #menu{
                widdth: 1000px;
                height: 50px;
                background-color: white;
                margin-top: 5px;
                border: 1px solid white;
            }
            #menu ul{
                list-style-type: none;
                
            }
            #menu ul li{
                display: inline;
            }
            #menu ul li a{
                padding: 20px;
                font-size: 20px;
                text-decoration: none;
                color: black;
            }
            #menu ul li a:hover{
                color: red;
            }
            #main{
                width: 1000px;
                height: auto;
                min-height: 700px;
                background-color: white;
                margin-top: 5px;
                border: 1px solid white;
            }
            #footer{
                width: 1000px;
                height: 85px;
                margin-top: 5px;
            }
            #lfooter{
                width: 500px;
                height: 85px;
                background-color: black;
                float: left;
                color: white;
                font-size: 30px;
                text-align: center;
                line-height: 85px;//center vertically
            }
            #rfooter{
                width: 500px;
                height: 85px;
                background-color: navy;
                float: right;
                color: white;
                font-size: 30px;
                text-align: center;
                line-height: 85px;//center vertically
            }
        </style>
    </head>
    <body bgcolor="red">
        <div id="wrapper">
            <div id="header">
                Welcome To Admin Zone
            </div>
            <div id="menu">
                <ul>
                    <li>
                        <a href="adminhome.jsp">Admin Home</a>
                    </li>
                     <li>
                        <a href="usermgmt.jsp">User Management</a>
                    </li>
                     <li>
                        <a href="enquirymgmt.jsp">Enquiry Management</a>
                    </li>
                     <li>
                        <a href="changepassword.jsp">Change Password</a>
                    </li>
                     <li>
                        <a href="logout.jsp">Logout</a>
                    </li>
                </ul>
            </div>
            <div id="main">
                <h1 style="color: blue;text-align: center;">Enquiry Management System</h1>
                <table border="1px" style="width:80%;margin:0 auto;">
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Gender</th>
                       <th>Address</th>
                       <th>Contact No</th>
                       <th>Email Address</th>
                       <th>Enquiry Text</th>
                       <th>Delete</th>
                    </tr>
                <% 
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mmmutdb", "root", "");
                    //String query=
                    PreparedStatement ps=con.prepareStatement("select * from enquiry");
                    ResultSet rs=ps.executeQuery();
                    while(rs.next()){
                %>
                    <tr>
                        <td><%=rs.getString("id")%></td>     
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("gender")%></td>
                        <td><%=rs.getString("address")%></td>
                        <td><%=rs.getString("contactno")%></td>
                        <td><%=rs.getString("emailaddress")%></td>
                        <td><%=rs.getString("enquirytext")%></td>
                        <td><a href="deleteenquiry.jsp?id=<%=rs.getString("id")%>">Delete</a></td>
                    </tr>
                     <% } %>
                </table>
            </div>
            <div id="footer">
                <div id="lfooter">
                    Copyright &copy;to MyWeb
                </div>
                <div id="rfooter"> 
                Developed by: Suraj Gupta
                </div>
            </div>
            
        </div>
        
    </body>
</html>
<% } %>
