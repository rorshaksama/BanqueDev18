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
        <link rel="stylesheet" href="CSS/Style.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">   
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">      
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
    
    </head>
    <body>
    <%@include file="menuAdmin.jsp" %>
    
            <div class="card">
          <div class="card-header titre ">
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
                 <c:forEach items="${conseillers}" var="conseillers">
                     <c:if test="${conseillers.isActive==false}">
                            <tr>
                            <td>${conseillers.user.nom}</td>
                            <td>${conseillers.user.prenom}</td>
                            <td>${conseillers.user.mail}</td>
                            <td><i class='fas fa-remove' onclick="recup(${conseiller.id})" data-toggle="modal" data-target="#modalConfirmSup" style='font-size:24px'></i></td>
                            <td><i class='fas fa-pen' onclick="recup(${conseiller.id})" data-toggle="modal" data-target="#modalConfirmSup" style='font-size:24px'></i></td>
                            <td><i class="fa fa-trash" onclick="recup(${conseiller.id})" data-toggle="modal" data-target="#modalConfirmSup" style='font-size:24px'></i></td>
                        
                             
                            </tr>
                            </c:if>
                     </c:forEach>
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
                   <c:if test="${conseillers.isActive==true}">
                           <tr>
                            <td>${conseillers.user.nom}</td>
                            <td>${conseillers.user.prenom}</td>
                            <td>${conseillers.user.mail}</td>
                            <td><i class='fas fa-remove' onclick="recup(${conseiller.id})" data-toggle="modal" data-target="#modalConfirmSup" style='font-size:24px'></i></td>
                            <td><i class='fas fa-pen' onclick="recup(${conseiller.id})" data-toggle="modal" data-target="#modalConfirmSup" style='font-size:24px'></i></td>
                            <td><i class="fa fa-trash" onclick="recup(${conseiller.id})" data-toggle="modal" data-target="#modalConfirmSup" style='font-size:24px'></i></td>
                        
                             </c:if>
                     </c:forEach>

                    
                </tbody>
            </table>
            
                 
                 
          </div>          
</div>
    
    <div class="modal fade" id="modalConfirmSup" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Voulez vous vraiment supprimer ? </h4>
                    </div>
                    <div class="modal-body">
                        <form action="supConseillerServlet" method="POST">
                            <input type="hidden" name="idsup" id="idsup" >
                            <button type="submit">OUI</button>
                        </form>
                    </div>
                </div>

            </div>
        </div>  
    
    
    
    
    </body>
    
    <script>

            function recup(id) {
                document.querySelector("#idsup").value = id;
            }

            function recupAll(id, nom, prenom, login) {
                document.querySelector("#inputId").value = id;
                document.querySelector("#inputNom").value = nom;
                document.querySelector("#inputPrenom").value = prenom;
                document.querySelector("#inputLogin").value = login;

            }

        </script>
</html>
