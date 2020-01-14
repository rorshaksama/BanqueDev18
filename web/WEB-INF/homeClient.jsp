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
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/Style.css">
    </head>
    <body>
        <%@include file="menuClient.jsp" %>
        <br>
         
        <div class="container">
            <div class="row">
                <div class="col-sm3">  </div>
                <div class="col-sm-6 titre">
                    Bonjour ${user.prenom} ${user.nom}, bienvenue sur votre espace client! <br> <br>
                </div>

            </div>
            <div class="row">
                <div class="col-sm3"></div>
                <div class="col-sm-6">
                    Ici, vous pouvez consulter votre compte et l'historique de vos transferts, modifier votre profil ou encore envoyer un message à votre conseiller.
                </div>

            </div>
        </div>
    </body>
</html>
