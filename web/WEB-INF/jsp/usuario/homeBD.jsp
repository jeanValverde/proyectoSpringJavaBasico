<%-- 
    Document   : homeBD
    Created on : 29-dic-2018, 15:09:57
    Author     : jean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="formValidacion.htm" />"> Formulario con validación <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="<c:url value="homeBD.htm" />"> Framework Spring java con MySql <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </nav>
        
        <div class="container" >
            <br/>
            <div class="row" >
                <div class="col-md-12" >
                    <nav class="navbar navbar-dark bg-dark">
                        <a class="navbar-brand" href="#">Usuario</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav">
                                <a class="nav-item nav-link active" href="<c:url value="homeBD.htm" />">lISTA DE USUARIOS <span class="sr-only">(current)</span></a>
                                <a class="nav-item nav-link" href="<c:url value="agregarUsuario.htm" />">AGREGAR</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <br/>
            <h1>Base de datos jdcb template</h1>
            <br/>

            <div class="row" >
                <div class="col-md-12" >
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Correo</th>
                                <th scope="col">Contraseña</th>
                                <th scope="col">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${datos}" var="dato" >
                                <tr>
                                    <th scope="row">${dato.idusuario}</th>
                                    <td>${dato.nombre}</td>
                                    <td>${dato.correo}</td>
                                    <td>${dato.password}</td>
                                    <td>
                                        <a href="<c:url value="editarUsuario.htm?id=${dato.idusuario}" />" class="btn btn-outline-success">Editar</a> 
                                        <a href="<c:url value="deleteUsuario.htm?id=${dato.idusuario}" />" class="btn btn-outline-danger">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </body>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</html>
