<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/Style.css">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">

        <title>Inscription</title>
    </head>
    <body> <%--style="background-image: url(https://steamuserimages-a.akamaihd.net/ugc/90474396939795301/FCC6FDB4E3C73B701BAEB69B4FFD9481C32B5AB1/) ;background-repeat:no-repeat; background-size: cover" >                                                               <%--background-color: rgb(255,255,255)"> --%>

        <br><br><br>
        <div class="container text-center">
            <div class="row">
                <div class="card-head mycardStyleheader">
                </div>
                <div class="myFormLog">
                    <div class="card myCardStyle">
                        <div class="card-header mycardStyleheader">
                            <h2 class="titre text-center "style="color: white">INSCRIPTION SUR BANQU'A</h2>
                        </div>

                        <div class="card-body">
                            <form  action="inscription" method="POST">
                                <div class="form-group " >
                                </div>   
                                <div>
                                    <input type="text" name="nom" placeholder="nom" class="form-control text-center">
                                </div>
                                <div>
                                    <input type="text" name="prenom" placeholder="prenom" class="form-control text-center">
                                </div>
                                <div>
                                    <input type="text" name="mail" placeholder="mail" class="form-control text-center">
                                </div>
                                <div>
                                    <input type="text" name="login" placeholder="login" class="form-control text-center">
                                </div>
                                <div>
                                    <input type="password" name="mdp" placeholder="mot de passe" class="form-control text-center">
                                </div>


                                <button type="submit" class="btn btn-primary btn-block">VALIDER</button>
                                <button type="button" onclick="location.href = 'index.jsp'" class="btn btn-primary btn-block">retour</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>






    </body>
</html>
