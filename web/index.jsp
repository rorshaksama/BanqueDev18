<%-- 
    Document   : index
    Created on : 10 janv. 2020, 10:45:46
    Author     : esic
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/style.css" class="myCardStyle">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        <link>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connexion</title>
    </head>
    <body>                                                               
        <br><br><br>
        <div class="container text-center"  >
            <div class="row">
                
                <div class="col-sm-3">
                    <div class="myFormLog">
                        <div class="card myCardStyle" >
                            <div class="card-body">
                                <h2 class="Titre text-center" style="color:  black" >Connexion</h2>
                                <form action="acceuil" method="POST">
                                    <div class="form-group " >
                                        <input type="text " name="login" value="${param['acceuil']}" placeholder="login" class="form-control text-center">
                                    </div>
                                    <div class="form-group p">
                                        <input type="password" name="mdp" placeholder="mot de passe" class="form-control text-center">
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-block">VALIDER</button>
                                    <button type="button" onclick="location.href = 'inscription'" class="btn btn-primary btn-block">Inscription</button>
                                    ${msg}

                                </form>
                            </div></div>
                    </div>
                </div>
            </div>
            <br><br><br>
            
                   

                </body>
                </html>
