<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Aplicación de Canciones</title>
    <link href="/css/styles.css" rel="stylesheet"/>
</head>
<body>
    <div class="container">
        <h1>Canciones</h1>
        <div class="row">
            <c:forEach items="${canciones}" var="cancion">
                <div class="tarjeta-cancion">
                    <h3>${cancion.titulo}</h3>
                    <p>Autor: ${cancion.artista.nombre} ${cancion.artista.apellido}</p>
                    <form action="/canciones/detalle/${cancion.id}" method="GET">
                        <button type="submit">Detalle</button>
                    </form>
                </div>
            </c:forEach>
        </div>
        <div class="row">
            <a class="btn-primary" href="/canciones/formulario/agregar">Agregar canción</a>
            <a class="btn-secondary" href="/artistas">Ver artistas</a>
        </div>
    </div>
</body>
</html>
