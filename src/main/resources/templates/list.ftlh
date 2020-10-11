<#include "base.ftlh">

<#macro page_body>
    <br><br>
    <h2 class="text-center">Listado de Estudiantes</h2><br>
    <div class="container">
        <table class="table table-striped">
            <thead class="thead-dark">
            <tr>
                <th scope="col">Matricula</th>
                <th scope="col">Nombre</th>
                <th scope="col">Apellido</th>
                <th scope="col">Telefono</th>
                <th scope="col">Opciones</th>
            </tr>
            </thead>
            <tbody>
            <#if estudiantes??>
                <#list estudiantes as estud>
                    <tr>
                        <th scope="row">${estud.matricula?c}</th>
                        <td>${estud.nombre}</td>
                        <td>${estud.apellido}</td>
                        <td>${estud.telefono}</td>
                        <td>
                            <a class="btn btn-primary" href="visualizar?matricula=${estud.matricula?c}">Visualizar</a>
                            <a class="btn btn-danger" href="eliminar?matricula=${estud.matricula?c}">Eliminar</a>
                        </td>
                    </tr>
                </#list>
            <#else>
                <tr>
                    <td colspan="5">No se encontraron datos</td>
                </tr>
            </#if>
            </tbody>
        </table>
    </div>
</#macro>

<@display_page/>