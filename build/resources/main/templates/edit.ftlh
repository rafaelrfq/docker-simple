<#include "base.ftlh">

<#macro page_body>
    <br><br>
    <h2 class="text-center">Editar Estudiante Existente</h2>
    <br>

    <div class="container">
        <form action="/editar" method="post" modelAttribute="estudiante">
            <input class="form-control" id="matricula" type="text" name="matricula" value="${estudiante.matricula?c}" readonly hidden required>
            <div class="form-group">
                <label for="nombre">Nombre</label>
                <input class="form-control" id="nombre" type="text" name="nombre" value="${estudiante.nombre}" required>
            </div>

            <div class="form-group">
                <label for="apellido">Apellido</label>
                <input class="form-control" id="apellido" type="text" name="apellido" value="${estudiante.apellido}" required>
            </div>

            <div class="form-group">
                <label for="telefono">Telefono</label>
                <input class="form-control" id="telefono" type="text" name="telefono" value="${estudiante.telefono}" required>
            </div>
            <br>
            <button class="btn btn-primary" type="submit">Guardar cambios</button>
            <a class="btn btn-secondary" href="/listado">Regresar</a>
        </form>
    </div>
</#macro>

<@display_page/>