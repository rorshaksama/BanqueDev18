<%-- 
    Document   : homeClient
    Created on : 14 janv. 2020, 15:41:15
    Author     : esic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Client</title>
    </head>
    <body>
         <%@include file="menuClient.jsp" %>
        Bonjour ${user.prenom} ${user.nom} 
    </body>
</html>
