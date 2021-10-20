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
                            <h2>Vision</h2><br>
To facilitate and promote studies, research, technology incubation, product innovation and extension work in Science, Technology and Management Education, and also to achieve excellence in higher technical education.

<h2>Mission</h2><br>
The distinctive mission of the University is:
To serve society as a center of higher learning, providing long-term societal benefits through transmitting advanced knowledge, discovering new knowledge and functioning as an active working repository of organized knowledge.
To take leadership role by providing need-based programs in engineering and technology, applied sciences, management, humanities, architecture, pharmacy, retail and fashion design, mass-communication, agriculture and other employable courses in emerging areas.
To promote compassionate care of the highest quality that translates new knowledge into meaningful improvements in technological outcomes through interdisciplinary collaboration, fiscal responsibility, support of diversity, a focus on quality and a culture of professionalism.
To establish value creating networks and foster relationship with other leading institutes of higher learning and research, alumni and industries in order to provide significant contribution to national and international development.
To create an intellectually stimulating Infrastructure and conducive environment for technology research, scholarship, creativity, innovation, entrepreneurship, and professional activity for service to community and economy.

<h2>Core Values</h2><br>
Academic integrity
Accountability with transparency, respect and tolerance for views of all stakeholders
Concern for social responsibilities and attention to all national/international issues needing technological intervention
Recognition of creativity and intellectual excellence
Spirit of learning, exploration, innovation and enterprise
All round understanding and knowledge of human sciences

                            
                        </div>
                        <div id="right"> </div>
                    </div>
                    <div id="footer"></div> 
        </div>
    </body>
</html>
