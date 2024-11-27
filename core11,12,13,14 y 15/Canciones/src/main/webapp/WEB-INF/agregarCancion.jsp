<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar canción</title>
    <link href="/css/styles.css" rel="stylesheet"/>
</head>
<body>
    <div class="container">
        <h1>Agregar nueva canción</h1>
        <form:form action="/canciones/procesa/agregar" method="POST" modelAttribute="cancion">
            <label for="titulo">Título:</label>
            <form:input id="titulo" path="titulo" />
            <form:errors path="titulo" />

            <label for="artista">Artista:</label>
            <select id="artista" name="idArtista">
                <c:forEach items="${artistas}" var="artista">
                    <option value="${artista.id}">${artista.nombre} ${artista.apellido}</option>
                </c:forEach>
            </select>

            <label for="album">Álbum:</label>
            <form:input id="album" path="album" />
            <form:errors path="album" />

            <label for="genero">Género:</label>
            <form:input id="genero" path="genero" />
            <form:errors path="genero" />

            <label for="idioma">Idioma:</label>
            <form:input id="idioma" path="idioma" />
            <form:errors path="idioma" />

            <button type="submit">Agregar</button>
        </form:form>
        <form action="/canciones" method="GET">
            <button type="submit" class="btn-secondary">Volver</button>
        </form>
    </div>
</body>
</html>