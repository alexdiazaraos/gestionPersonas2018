<%@include file="template/header.jsp" %>

<c:if test="${not empty sessionScope.person}">
    <%@include file="template/menu.jsp" %>
    <div class="row"></div>
    <div class="row">
    <div class="col s6 offset-s3 z-depth-3">
        <form action="control.do" method="post">
        <h4 class="center-align">Mis Datos</h4>
            <label>Rut</label>
            <input type="text" readonly="true" name="rut" value="${sessionScope.person.rut}"/>
            <br>
            <label>Nombre</label>
            <input type="text" name="nombre" value="${sessionScope.person.nombre}"/>
            <br>
            <label>Mail</label>
            <input type="text" name="mail" value="${sessionScope.person.mail}"/>
            <br>
            <label>Clave</label>
            <input type="text" name="clave"/>
            <br>
            <label>Confirmar</label>
            <input type="text" name="confirmar"/>
            <br>
            <label>Perfil</label>
            <input type="text" readonly="true" name="perfil" value="${sessionScope.person.perfil}"/>
            <label>Activo</label>
            <select name="activo" disabled="true">
                <option ${requestScope.persona.activo?"":"selected"}>Si</option><!-- si esta activo aparecera seleccionado el si -->
                <option ${requestScope.persona.activo?"selected":""}>No</option><!-- si no esta activo aparecera seleccionado el no -->
            </select>
            <br>
            <button class="btn green darken-1" type="submit" name="boton" value="editar">Editar</button>
            <br><br>
        </form>
    </div>
    </div>
    
</c:if>


<%@include file="template/footer.jsp" %>