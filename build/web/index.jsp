<%-- 
    Document   : index
    Created on : 29 de mai. de 2023, 23:45:07
    Author     : Erick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
        <style>
        .container {
            margin-top: 50px;
        }
    </style>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <form method="post" action="/Login">
            <input type="hidden" name="action" value="login">
            <div class="form-group">
                <label for="username">Nome de usuario:</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Senha:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary">Entrar</button>
            
            <c:if test="${not empty mensagemErro}">
                <div class="alert alert-danger mt-3">${mensagemErro}</div>
            </c:if>          
        </form>
    </div>
</body>
</html>
