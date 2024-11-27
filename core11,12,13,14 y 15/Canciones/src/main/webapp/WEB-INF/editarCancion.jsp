<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar canción</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/css/styles.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <h1>Editar canción</h1>
        <form:form action="/canciones/procesa/editar/${cancion.id}" method="POST" modelAttribute="cancion">
            <input type="hidden" name="_method" value="PUT" />
            <div>
                <form:label path="titulo">Título:</form:label>
                <form:input path="titulo" class="form-control" />
                <form:errors path="titulo" class="text-danger" />
            </div>
            <div>
                <label for="idArtista">Artista:</label>
                <select id="idArtista" name="idArtista" class="form-control">
                    <c:forEach items="${artistas}" var="artista">
                        <option value="${artista.id}" <c:if test="${artista.id == cancion.artista.id}">selected</c:if>>
                            ${artista.nombre} ${artista.apellido}
                        </option>
                    </c:forEach>
                </select>
            </div>
            <div>
                <form:label path="album">Álbum:</form:label>
                <form:input path="album" class="form-control" />
                <form:errors path="album" class="text-danger" />
            </div>
            <div>
                <form:label path="genero">Género:</form:label>
                <form:input path="genero" class="form-control" />
                <form:errors path="genero" class="text-danger" />
            </div>
            <div>
                <form:label path="idioma">Idioma:</form:label>
                <form:input path="idioma" class="form-control" />
                <form:errors path="idioma" class="text-danger" />
            </div>
            <div>
                <button type="submit" class="btn btn-primary">Guardar cambios</button>
                <a href="/canciones" class="btn btn-secondary">Volver</a>
            </div>
        </form:form>
    </div>
</body>
</html>
