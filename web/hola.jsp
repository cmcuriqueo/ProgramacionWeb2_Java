<%-- 
    Document   : hola
    Created on : 12/08/2016, 15:23:24
    Author     : universidad
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
        <script type="text/javascript" src="bower_components/bootstrap/dist/js/bootstrap.js"></script>
        <link rel="stylesheet" type="text/css" href="bower_components/bootstrap/dist/css/bootstrap.css">
        <title>Bienvenida</title>
    </head>
    <body>
        <h1> Bienvenido </h1>
        <div class="row-fluid">
            <div class="span2">
                <c:if test="${not empty nombre}">
                    <p>Hello, ${nombre}</p>
                </c:if>
                <c:if test="${empty nombre}">
                    <p>Hello, DESCONOCIDO! </p>
                </c:if>
                <p>
                    0-Es necesario tener [maven](https://maven.apache.org/) instalados en sus pc.
                    1- Ubicar el jar postgresql-9.3-1103.jdbc3 que se encuentra en \src\main\webapp\WEB-INF\Libraries ruta del proyecto a un ruta copiarlo a una ruta, copiarlo a una ruta de facil acceso desde la consola, yo copie por ejemplo en mi carpeta personal.
                    2- Abrir una consola y agregar el siguiente comando: 
                    mvn install:install-file -Dfile="C:\Users\Usuario\postgresql-9.3-1103.jdbc3.jar" -DgroupId=org.postgresql -DartifactId=postgresql -Dversion=9.3-1103.jdbc3 -Dpackaging=jar

                    -Dfile: Correponde a la ruta donde esta el archivo postgresql-9.3-1103.jdbc3.jar

                </p>
            </div>
        </div>
    </body>
</html>
