<%-- 
    Document   : adminGestion
    Created on : 14 janv. 2020, 13:51:06
    Author     : esic
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/Style.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
         <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
         <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">   
                
    </head>
    <body>
    <%@include file="menuAdmin.jsp" %>
    
            <div class="card">
          <div class="card-header">
            Conseillers
          </div>
           <div class="card-body ">
            
                <h6>Conseillers activés</h6>
            <table class = "table">
                <thead class="thead-light">
                    <tr>
                        <th class="text-center">Nom</th>
                        <th class="text-center">Prenom</th>
                        <th class="text-center">E-mail</th>
                        <th class="text-center">Désactiver</th>
                        <th class="text-center">Modifier</th>
                        <th class="text-center">Supprimer</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
                 <h6>Conseillers désactivés</h6>
            <table class = "table">
                <thead class="thead-light">
                    <tr>
                        <th class="text-center">Nom</th>
                        <th class="text-center">Prenom</th>
                        <th class="text-center">E-mail</th>
                        <th class="text-center">Désactiver</th>
                        <th class="text-center">Modifier</th>
                        <th class="text-center">Supprimer</th>
                    </tr>
                </thead>
                <tbody>
                    
                     <c:forEach items="${conseillers}" var="conseillers">
                   
                            <tr>
                            <td>${conseillers.user.nom}</td>
                            <td>${conseillers.user.prenom}</td>
                            <td>${conseillers.user.mail}</td>
                            <td>
   
                     </c:forEach>

                    
                </tbody>
            </table>
            
                 
          </div>          
</div>
    
    
    
    
    
    
    </body>
</html>
