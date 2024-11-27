<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Artistas</title>
    <link href="/css/styles.css" rel="stylesheet"/>
</head>
<body>
    <div class="container">
        <h1>Lista de Artistas</h1>
        <div class="row">
            <c:forEach items="${artistas}" var="artista">
                <div class="tarjeta-cancion">
                    <h3>${artista.nombre} ${artista.apellido}</h3>
                    <form action="/artistas/detalle/${artista.id}" method="GET">
                        <button type="submit">Detalle</button>
                    </form>
                </div>
            </c:forEach>
        </div>
        <div class="row">
            <a class="btn-secondary" href="/canciones">Ir a Canciones</a>
        </div>
    </div>
</body>
</html>