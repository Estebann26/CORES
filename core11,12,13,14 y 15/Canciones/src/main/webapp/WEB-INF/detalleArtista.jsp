<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Detalle de artista</title>
    <link href="/css/styles.css" rel="stylesheet"/>
</head>
<body>
    <div class="container">
        <div class="row">
            <h1>Detalle del artista: ${artista.nombre} ${artista.apellido}</h1>
        </div>
        <div class="row tarjeta-cancion">
            <p>Biografía: ${artista.biografia}</p>
            <h5>Canciones</h5>
            <ul>
                <c:forEach items="${artista.canciones}" var="cancion">
                    <li>${cancion.titulo}</li>
                </c:forEach>
            </ul>
        </div>
        <div class="row">
            <form action="/artistas" method="GET">
                <button type="submit">Volver</button>
            </form>
        </div>
    </div>
</body>
</html>
