<%-- 
    Document   : exitoFormValidation
    Created on : 29-dic-2018, 13:28:42
    Author     : jean
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">


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
                        <a class="nav-link" href="<c:url value="herramientasGUI.htm" />"> Herramientas GUI <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="<c:url value="formValidacion.htm" />"> Formulario con validación <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="homeBD.htm" />"> Framework Spring java con MySql <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container" >
            <h1>Resultado de form con validaciones</h1>


            <h2>Nombre: <c:out value="${nombre}" /> </h2>
            <br/>
            <h2>Correo: ${correo}</h2>
            <br/>
            <h2>Edad: ${edad}</h2>

        </div>


    </body>
</html>
