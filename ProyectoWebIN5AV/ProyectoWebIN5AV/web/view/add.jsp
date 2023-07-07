    <%-- 
    Document   : add
    Created on : 16/08/2022, 02:05:15 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="./css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="./css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="./css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Agregar Persona</title>
    </head>
    <body class="bg-primary">
        <div class="container ">
            <div class="col-lg-5">
                <h1 >Agregar Nueva Persona</h1>
                <form actions="Controlador">
                    <strong >DPI:</strong>  <br>
                    <input class="form-control" type="text" name="txtDPI"><br><br>
                    <strong>Nombres:</strong> <br>
                    <input class="form-control" type="text" name="txtNombre"><br><br>
                    <input class="btn-success" type="submit" name="accion" value="Agregar"><br>
                    
                    
                </form>
            </div>
        
        </div>    
    </body>
</html>
