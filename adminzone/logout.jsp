<%-- 
    Document   : logout.jsp
    Created on : 11 May, 2021, 1:19:12 PM
    Author     : Suraj Kumar Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% session.invalidate();   %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script> 
             function logout(){
                 window.history.forward();
                 window.setTimeout("window.location.href='../login.jsp'",2000);  //.. is for bahar nikalne k liye adminzone folder se    
             }
        </script>
    </head>
    <body bgcolor="black" onload="logout()">
        
    </body>
</html>
