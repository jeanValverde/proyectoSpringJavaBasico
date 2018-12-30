<%-- 
    Document   : formularios
    Created on : 29-dic-2018, 0:49:22
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
    </head>
    <body>
        <h1>Formularios en Spring</h1>
        <ul>
            <li type="square"><a href="<c:url value="home.htm" />" >Hola mundo</a>.</li>

            <li type="square"><a href="<c:url value="pruebaParametro.htm?id=primerParametroEjemploID&nombre=SegundoParametroNombre" />" >Prueba de paso de parametros GET tipo QUERY STRING</a>.</li>

            <li type="disc"><a href="<c:url value="formularios.htm" />" >Formulario Simple</a></li>

            <li type="circle"><a href="<c:url value="herramientasGUI.htm" />" >HerramientasGUI</a></li>

            <li type="disc"><a href="<c:url value="formValidacion.htm" />" >Formulario con validacion</a></li>

            <li type="circle"><a href="<c:url value="homeBD.htm" />" >Framework Spring java con MySql</a></li>

        </ul>
        
        <form:form>
            <p>
                <form:label path="nombre" >Nombre</form:label>
                <form:input path="nombre"></form:input>
                
                <form:label path="correo" >Correo</form:label>
                <form:input path="correo"></form:input>
                
                <form:label path="edad" >Edad</form:label>
                <form:input path="edad"></form:input>
                
                <br>
                <form:button>Enviar formulario</form:button>
                
                <!-- Igual funciona con input normales de html  -->
                
            </p>
        </form:form>
        
    </body>
</html>
