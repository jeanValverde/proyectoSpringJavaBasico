<%-- 
    Document   : agregarUsuario
    Created on : 29-dic-2018, 17:27:40
    Author     : jean
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                                <a class="nav-item nav-link" href="<c:url value="homeBD.htm" />">lISTA DE USUARIOS <span class="sr-only">(current)</span></a>
                                <a class="nav-item nav-link active" href="<c:url value="agregarUsuario.htm" />">AGREGAR</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <br/>
            <h1>Agregar usuario</h1>
            <form:form method="post" commandName="usuario"  >

                <div class="form-group">
                    <label for="exampleInputEmail1">Nombre</label>
                    <form:input path="nombre" cssClass="form-control"  />
                    <small id="emailHelp" class="form-text text-muted">El nombre es obligatorio.</small>
                    <form:errors path="nombre" element="div" cssClass="alert alert-danger" />

                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Correo</label>
                    <form:input path="correo" cssClass="form-control"  /> 
                    <small id="emailHelp" class="form-text text-muted">El correo debe ser valido.</small>
                    <form:errors path="correo" element="div" cssClass="alert alert-danger" />
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Contraseña</label>
                    <form:password  path="password" cssClass="form-control"  /> 
                    <small id="emailHelp" class="form-text text-muted">La contrseña debe tener al entre 8 y 16 caracteres, al menos un dígito, al menos una minúscula, al menos una mayúscula y al menos un caracter no alfanumérico. .</small>
                    <form:errors path="password" element="div" cssClass="alert alert-danger" />
                </div>
                <button type="submit" class="btn btn-primary" >Registrar...</button>
            </form:form>

        </div>

    </body>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</html>

