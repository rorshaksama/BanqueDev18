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
        <div class="row">
            <div class="col-sm-9">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a class="navbar-brand" href="#">Client</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav"  aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link" href="client">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="apercuCompte">Aperçu compte</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="profilClient">Profil</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="messageClient">Messagerie</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>

            <div class="col-sm-3">
                <button type="button" class="btn btn-danger btn-block" onclick="location.href = 'deco'">DECONNEXION</button>
            </div>
        </div>
    </body>
</html>
