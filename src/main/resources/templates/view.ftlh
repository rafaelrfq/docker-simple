<#include "base.ftlh">

<#macro page_body>
    <br><br>
    <h2 class="text-center">Visualizar Estudiante</h2>
    <br>

    <div class="card mx-auto" style="width: 30rem">
        <#if estudiante??>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <label for="matricula">Matricula</label>
                        <input class="form-control" id="matricula" type="text" name="matricula" value="${estudiante.matricula?c}" readonly>
                    </div>
                    <div class="col-md-6">
                        <label for="nombre">Nombre</label>
                        <input class="form-control" id="nombre" type="text" name="nombre" value="${estudiante.nombre}" readonly>
                    </div>
                </div><br>
                <div class="row">
                    <div class="col-md-6">
                        <label for="apellido">Apellido</label>
                        <input class="form-control" id="apellido" type="text" name="apellido" value="${estudiante.apellido}" readonly>
                    </div>
                    <div class="col-md-6">
                        <label for="telefono">Telefono</label>
                        <input class="form-control" id="telefono" type="text" name="telefono" value="${estudiante.telefono}" readonly>
                    </div>
                </div><br>
                <div class="row">
                    <div class="col-md-3">
                        <a class="btn btn-primary" href="/editar?matricula=${estudiante.matricula?c}">Editar</a>
                    </div>
                    <div class="col-md-3">
                        <a class="btn btn-secondary" href="/listado">Regresar</a>
                    </div>
                </div>
            </div>
        <#else>
            <h3 class="text-center">La matricula proporcionada no retorno ningun estudiante.</h3>
        </#if>
    </div>

</#macro>

<@display_page/>