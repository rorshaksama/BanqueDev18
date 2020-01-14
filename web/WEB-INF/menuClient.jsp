<%-- 
    Document   : menuClient
    Created on : 14 janv. 2020, 13:06:09
    Author     : esic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/style.css" class="myCardStyle">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">

        <title>MENU</title>
    </head>
    <body>
        <ul class="nav">
            <li class="nav-item">
                <a class="nav-link active" href="home">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="compte">Liste des membres</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="messagerie">Liste des membres</a>
            </li>
            <div class="col-sm-3">
                <button type="button" class="btn btn-danger" onclick="location.href = 'deco'">Déconnexion</button>
            </div>
        </ul>
    </body>
</html>
