<%-- 
    Document   : herramientasGUI
    Created on : 28-dic-2018, 23:00:11
    Author     : jean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>

        <meta charset=UTF-8" >
        <title>JSP Page</title>

        <link href="<c:url value="/public/css/estilo.css" />"  rel="stylesheet" type="text/css" />


        <link href="<c:url value="/public/css/prueba.css" />"  rel="stylesheet" type="text/css" />

        <!--
         <link rel="stylesheets" href="${pageContext.request.contextPath}/public/css/estilo.css"  >
        pageContext.request.contexPath = retiona la direccion del proyecto despues del dominio (ruta absoluta)  
             NOTA: NO RECOMENDADO 
        -->


        <!-- boostrap -->

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>



    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                <a class="navbar-brand" href="#">Java Spring</a>
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="home.htm" />">Hola mundo <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="pruebaParametro.htm?id=primerParametroEjemploID&nombre=SegundoParametroNombre" />">Paso de parametros GET</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="formularios.htm" />">Formulario Simple <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="<c:url value="herramientasGUI.htm" />"> Herramientas GUI <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="formValidacion.htm" />"> Formulario con validación <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="homeBD.htm" />"> Framework Spring java con MySql <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </nav>
                    
        <br/>
                    
        <div class="container" >

            <h1 class="prueba" >Herramientas DOM (js,css,etc) Bootstrap</h1>

            <br/>
            <div class="row" >

                <div class="col-md-6" >
                    <div class="card text-center">
                        <div class="card-header">
                            JS 
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Prueba JS</h5>
                            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                            <a href="javascript:void(0)" onclick="saludo();" >Haz clip js</a>
                        </div>
                        <div class="card-footer text-muted">
                            2 days ago
                        </div>
                    </div>
                </div>

                <div class="col-md-6" >
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" alt="Card image cap" src="<c:url value="/public/img/pp.jpg" />" />
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>

                </div>
            </div>

        </div>


        <script src="<c:url value="/public/js/saludo.js" />"   ></script>



    </body>
</html>
