<%-- 
    Document   : form
    Created on : 19/08/2016, 15:32:00
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
        <title>Formulario</title>
    </head>
    <script type="text/javascript">


        $().ready(function () {

            jQuery.validator.addMethod('selectcheck', function (value) {
                return (value != '0');
            }, "La localidad es requerida");

            $("#formulario_index").validate({
                rules: {
                    nombre: {
                        required: true,
                        minlength: 3,
                        maxlength: 20
                    },
                    localidad: {
                        selectcheck: true
                    },
                    edad: {
                        number: true,
                        required: true,
                        min: 10
                    }
                },
                messages: {
                    nombre: {
                        required: "Campo obligatorio",
                        minlength: "Longitud minima 3 carácteres",
                        maxlength: "Longitud maxima 20 carácteres"
                    },
                    edad: {
                        number: "Ingrese un numero",
                        required: "Campo obligatorio",
                        min: "Minimo valor 10"
                    }
                }
            });
        });
    </script>
    <body>
        <div class="container">
            <div class="row"> 
                <p><p>
                   <c:if test="${not empty errores}">
                    <div class="error">
                        Error al procesar el formulario
                        <ul>
                            <c:forEach var="item" items="${errores}">
                                <li style="color: red;">${item.value}</li>
                                </c:forEach>
                        </ul>
                    </div>
                </c:if>
            </div>
            <div class="row">
                <form class="form-horizontal" action="procesar" method="POST">
                    <div class="col-md-7">
                        <div class="panel panel-success">
                            <div class="panel-body">Formulario</div>
                            <div class="panel-footer">
                                <ul class="list-group">
                                    <p></p>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="nombre">Nombre : </label>
                                        <div class="col-sm-10"> <input name="nombre" type="text" placeholder="Nombre"> </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="edad">Edad : </label>
                                        <div class="col-sm-10"> <input name="edad" type="number" placeholder="Edad" min="10"> </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="localidad">Localidad : </label>
                                        <div class="col-sm-10">
                                            <select id="localidad" name="localidad">
                                                <option value="0">localidad</option>
                                                <option>Esquel</option>
                                                <option>Rawson</option>
                                                <option>Trelew</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button class="btn btn-info" type="submit">Enviar</button>
                                        </div>
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
