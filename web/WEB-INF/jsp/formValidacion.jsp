<%-- 
    Document   : formValidacion
    Created on : 29-dic-2018, 11:46:56
    Author     : jean
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
            <div class="row" >
                <div style="height: 20px;" ></div>
            </div>
            <h1>Formulario con validación</h1>
            <form:form method="post" commandName="persona"  >

                <form:errors path="*" element="div" cssClass="alert alert-danger" />

                <div class="form-group">
                    <label for="exampleInputEmail1">Nombre</label>
                    <form:input path="nombre" cssClass="form-control"  />
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    <form:errors path="nombre" element="div" cssClass="alert alert-danger" />

                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Correo</label>
                    <form:input path="correo" cssClass="form-control"  /> 
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Edad</label>
                    <form:select path="edad" cssClass="form-control" >
                        <form:option value="0" >Seleccione</form:option>
                        <form:options items="${edades}" />
                    </form:select>
                </div>
                <button type="submit" class="btn btn-primary" >Registrar...</button>
            </form:form>

        </div>

    </body>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</html>
