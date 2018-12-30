<%-- 
    Document   : resultadoFormulario
    Created on : 29-dic-2018, 1:19:58
    Author     : jean
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Resultado de formulario</h1>
        
         <ul>
            <li type="square"><a href="<c:url value="home.htm" />" >Hola mundo</a>.</li>

            <li type="square"><a href="<c:url value="pruebaParametro.htm?id=primerParametroEjemploID&nombre=SegundoParametroNombre" />" >Prueba de paso de parametros GET tipo QUERY STRING</a>.</li>

            <li type="disc"><a href="<c:url value="formularios.htm" />" >Formulario Simple</a></li>

            <li type="circle"><a href="<c:url value="herramientasGUI.htm" />" >HerramientasGUI</a></li>

            <li type="disc"><a href="<c:url value="formValidacion.htm" />" >Formulario con validacion</a></li>

            <li type="circle"><a href="<c:url value="homeBD.htm" />" >Framework Spring java con MySql</a></li>

        </ul>
            
        <br/>
        <h2>Nombre: <c:out value="${nombre}" /> </h2>
         <br/>
        <h2>Correo: ${correo}</h2>
         <br/>
        <h2>Edad: ${edad}</h2>
    </body>
</html>
