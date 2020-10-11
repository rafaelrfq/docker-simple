<#include "base.ftlh">

<#macro page_body>
    <br><br>
    <h2 class="text-center">Crear Nuevo Estudiante</h2>
    <br>

    <div class="container">
        <form action="/crear" method="post" modelAttribute="estudiante">
            <div class="form-group">
                <label for="matricula">Matricula</label>
                <input class="form-control" id="matricula" type="text" name="matricula" required>
            </div>

            <div class="form-group">
                <label for="nombre">Nombre</label>
                <input class="form-control" id="nombre" type="text" name="nombre" required>
            </div>

            <div class="form-group">
                <label for="apellido">Apellido</label>
                <input class="form-control" id="apellido" type="text" name="apellido" required>
            </div>

            <div class="form-group">
                <label for="telefono">Telefono</label>
                <input class="form-control" id="telefono" type="text" name="telefono" required>
            </div>

            <br>
            <button class="btn btn-primary" type="submit">Agregar</button>
        </form>
    </div>

</#macro>

<@display_page/>