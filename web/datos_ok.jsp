<%-- 
    Document   : datos_ok
    Created on : 19/08/2016, 15:32:36
    Author     : universidad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <p class="text-center">
                <div class="row">
                    <div class="col-xs-6 col-md-4">
                        <p>Nombre:  ${nombre}</p>
                        <p>Edad: ${edad}</p>
                        <p>Localidad: ${localidad}</p>
                    </div>
                    <div class="row">
                        <a class="btn btn-default" href="form.jsp">Formulario</a>
                    </div>
                </div>
            </p>
        </div>
    </body>
</html>
