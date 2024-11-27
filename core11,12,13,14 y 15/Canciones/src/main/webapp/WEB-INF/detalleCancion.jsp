<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Detalle de canci�n</title>
    <link href="/css/styles.css" rel="stylesheet"/>
</head>
<body>
    <div class="container">
        <div class="row">
            <h1>Detalle de la canci�n</h1>
        </div>
        <div class="row tarjeta-cancion">
        	<p>Nombre: ${cancion.titulo}</p>
            <p>Artista: ${cancion.artista.nombre} ${cancion.artista.apellido}</p>
            <p>�lbum: ${cancion.album}</p>
            <p>G�nero: ${cancion.genero}</p>
            <p>Idioma: ${cancion.idioma}</p>
        </div>
        <div class="row">
            <form action="/canciones" method="GET" style="display:inline-block;">
                <button type="submit" class="btn-secondary">Volver</button>
            </form>
            <form action="/canciones/eliminar/${cancion.id}" method="POST" style="display:inline-block;">
                <input type="hidden" name="_method" value="DELETE"/>
                <button type="submit" class="btn-danger">Eliminar canci�n</button>
            </form>
            <form action="/canciones/formulario/editar/${cancion.id}" method="GET" style="display:inline-block;">
                <button type="submit" class="btn-info">Editar canci�n</button>
            </form>
        </div>
    </div>
</body>
</html>
