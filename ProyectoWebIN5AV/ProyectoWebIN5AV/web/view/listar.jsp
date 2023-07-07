    <%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Persona"%>
<%@page import="modelDAO.PersonaDAO"%>
<%-- 
    Document   : listar
    Created on : 16/08/2022, 02:04:14 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Listar de Personas </title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center text-success"> Listar de Personas </h1>
            <br>
            <a class="btn  btn-success" href="Controlador?accion=add">Agregar nueva persona</a>
            <br>
            <table  class="table table-bordered table-hover table-striped ">
                <thead>
                    <tr>
                        <th class="text-center text-primary">CODIGO PERSONA</th>
                        <th class="text-center text-primary">DPI</th>
                        <th class="text-center text-primary">NOMBRES</th>
                        <th class="text-center text-primary">ACCIONES</th>                           
                    </tr>    
                    
                </thead>  
                <%
                   PersonaDAO dao = new PersonaDAO();
                   List<Persona> listaPersona = dao.listar();
                   Iterator<Persona> iterator = listaPersona.iterator();
                   Persona per = null;
                   while(iterator.hasNext()){
                       per = iterator.next();
                   
                
                
                
                %>  
                    
                    
                <body>
                    <tr>
                        <td class="text-center "><%= per.getCodigoPersona()%></td>
                        <td class="text-center "><%= per.getDPI()%></th>
                        <td class="text-center "><%= per.getNombrePersona()%></td>
                        <td>
                            <a class="btn btn-danger " href="Controlador?accion=editar&codigoPersona=<%= per.getCodigoPersona()%>">Edit</a>
                            <a class="btn btn-warning" href="Controlador?accion=eliminar&codigoPersona<%=per.getCodigoPersona()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                 </body>
            </table>    
        </div>
    </body>
</html>
    