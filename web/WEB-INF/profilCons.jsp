<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css">
        <title>Conseiller</title>
    </head>
    <body>
        <%@include file="menuCons.jsp" %>
        <br>
        <div class="container">
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                    <div class="col-md-4">
                        <img src="..." class="card-img" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Profil du conseiller</h5>
                            <p class="card-text">Nom : ${u.nom}</p>
                            <p class="card-text">Prénom : ${u.prenom}</p>
                            <p class="card-text">Mail : ${u.mail}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
    </body>
</html>
