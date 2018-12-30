<%-- 
    Document   : pruebaParametro
    Created on : 28-dic-2018, 22:14:17
    Author     : jean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Recuperación de parametros</h1>
        
        <ul>
            <li type="square"><a href="<c:url value="home.htm" />" >Hola mundo</a>.</li>

            <li type="square"><a href="<c:url value="pruebaParametro.htm?id=primerParametroEjemploID&nombre=SegundoParametroNombre" />" >Prueba de paso de parametros GET tipo QUERY STRING</a>.</li>

            <li type="disc"><a href="<c:url value="formularios.htm" />" >Formulario Simple</a></li>

            <li type="circle"><a href="<c:url value="herramientasGUI.htm" />" >HerramientasGUI</a></li>

            <li type="disc"><a href="<c:url value="formValidacion.htm" />" >Formulario con validacion</a></li>

            <li type="circle"><a href="<c:url value="homeBD.htm" />" >Framework Spring java con MySql</a></li>

        </ul>
        
        <ul>
            <li>ID= ${id} </li>
            <li>Nombre= <c:out value="${nombre}" /> </li>
        </ul>
        
    </body>
</html>
