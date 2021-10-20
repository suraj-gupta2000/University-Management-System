<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
                background-color: white;
                float: left;
                border-radius: 0px 0px 0px 20px;
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
                            <h1 style="color:blue;text-align: center;">Admin Login</h1> 
                            <form action="logcode.jsp" method="post">
                                <table style="width:50%;margin: 0 auto;">
                                    <tr>
                                        <td>Enter UserId</td>
                                        <td>
                                            <input type="text" name="userid"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Enter Password</td>
                                        <td>
                                            <input type="password" name="password"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>
                                            <input type="submit" value="Admin Login"/>
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                        <div id="right"> </div>
                    </div>
                    <div id="footer"></div> 
        </div>
    </body>
</html>
