<%-- 
    Document   : accueil
    Created on : 14 janv. 2020, 12:40:21
    Author     : esic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connexion</title>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        
        <br><br>
        <div class="container">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4  boxShad">
                    
                    <h2 class="ta text-white bg-dark">Connexion</h2>
                    <div class="myFormLog">
                        <form action="connexion" method="POST">
                            <div class="form-group">
                                <br>
                                <input type="text" name="login" value="${param['login']}" placeholder="login" class="form-control ta">
                            </div>
                            <div class="form-group">
                                <input type="password" name="mdp" placeholder="mot de passe" class="form-control ta">
                            </div> 
                            <br><br>
                            <button type="submit" class="btn btn btn-block text-white bg-dark">Valider</button>
                            <button type="button" onclick="location.href='inscription'" class="btn btn-link btn-block">Inscription ?</button>
                             
                        </form>
                        <p class="ta text-danger">
                            ${msg}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
