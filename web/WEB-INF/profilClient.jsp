<%-- 
    Document   : profilClient
    Created on : 14 janv. 2020, 16:37:51
    Author     : esic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProfilClient</title>
    </head>
    <body>
        <%@include file="menuClient.jsp" %>

        <div class="container">
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                    <div class="col-md-4">
                        <img src="..." class="card-img" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Profil Client</h5>
                            <p class="card-text">Nom : ${user.nom}</p>
                            <p class="card-text">Prénom : ${user.prenom}</p>
                            <p class="card-text">Login : ${user.login}</p>
                            <p class="card-text">Mail : ${user.mail}</p>
                            <p class="card-text">Date de naissance : ${client.dateNaissance}</p>  
                            <p class="card-text">Adresse : ${client.adresse}</p>
                            <p class="card-text">Photo : ${client.photo}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
