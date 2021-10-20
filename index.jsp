<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            #outer{
                width: 1000px; 
                height: 1200px;
               // border: 1px solid white;
                margin: 0 auto;
                border-radius: 20px;
            }
            #menu{
                width:1000px; 
                height: 50px;
                background-color: white;
                border-radius: 20px 20px 0px 0px;
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
            
            
            
            #slider{
                width:1000px;height:200px;
                background-color: grey;
                margin-top: 5px;
            }
            #parent{
                width: 1000px;
                height: 700px;
                margin-top: 5px;
            }
            #left{
                width: 700px;
                height: 700px;
                background-color: yellow;
                float: left;
                border-radius: 0px 0px 0px 20px;
            }
            #left h1{
                text-align: center;
            }
            #right{
                width: 300px;
                height: 700px;
                background-color: lightgray;
                float: right;
                border-radius: 0px 0px 20px 0px;
            }
            #footer{
                width: 1000px;
                height: 230px;
                background-color: white;
                margin-top: 10px;
                border-radius: 20px;
            }
        </style>
    </head>
    <body bgcolor="green">
        <div id="outer">
            <div id="menu"> 
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="registration.jsp">Registration</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                </ul>
            </div>
            <div id="slider"> 
                    <img src="images/collage.jpeg" width="1000" height="200"/> 
            </div>
                    <div id="parent">
                        <div id="left">
                            <h1>M D H University of Technology</h1>
                            <h3>
                                  M D H University of Technology, Gorakhpur has been established in year 2013<br><br>
                                by the Government of Uttar Pradesh in the form of a non-affiliating, teaching and<br><br>
                                research University after reconstituting the Madan Mohan Malaviya Engineering College,<br><br>
                                Gorakhpur which was established in 1962. Fifty-Five batches of students have entered its<br><br>
                                portals to emerge after four years of rigorous education under the tutelage of some<br><br>
                            of the most venerable teachers, engineers ready to face the world and create new worlds.
                                
                            </h3>
                        </div>
                        <div id="right"> 
                            <marquee direction="up" height="500px" onmouseover="stop()" onmouseout="start()" behavior="alternate">
                          <%
                              Class.forName("com.mysql.jdbc.Driver");
                              Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/mmmutdb", "root", "");
                             PreparedStatement ps=con.prepareStatement("select * from notification");
                             ResultSet rs=ps.executeQuery();
                             while(rs.next()){
                                
                          %>
                          <p style="color:blue;text-align: center;"><%=rs.getString("notificationtext")%></p>
                          <p style="color:red;text-align: center;"><%=rs.getString("notificationdate")%></p>
                          <% } %>
                          </marquee>
                        </div>
                    </div>
                    <div id="footer"></div> 
        </div>
    </body>
</html>
