    <%@page import="model.Persona"%>
<%@page import="modelDAO.PersonaDAO"%>
<%-- 
    Document   : editar
    Created on : 16/08/2022, 02:06:05 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Atualizar Persona</title>
    </head>
    <body class="alert-danger">
        <div class="container">
            <div class="col-lg-5">
                <%
                    PersonaDAO nuevaPersonaDAO = new PersonaDAO();
                    int codPersona = Integer.parseInt((String)request.getAttribute("codPer"));
                    Persona nuevaPersona = (Persona)nuevaPersonaDAO.list(codPersona);
                %>
                <h1>Modificar Persona</h1>
                <form action="Controlador"> 
                    <strong>DPI:</strong>
                    <input class="form-control" type="text" name="txtDPI" value="<%=nuevaPersona.getDPI()%>"><br><br>
                    <strong>Nombres:</strong><br>
                    <input class="form-control" type="text" name="txtNombre" value="<%=nuevaPersona.getNombrePersona()%>"><br><br>
                    <input class="form-control" type="hidden" name="txtCodigoPersona" value="<%=nuevaPersona.getCodigoPersona()%>"<br>
                    <input class="btn-success" type="submit" name="accion" value="Actualizar">
                    
                </form>
            </div>
        </div>
    </body>
</html>
