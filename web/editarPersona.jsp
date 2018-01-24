<%@include file="template/header.jsp" %>

<c:if test="${not empty sessionScope.admin}">
    <%@include file="template/menu.jsp" %>
    <div class="row"></div>
    <div class="row">
    <div class="col s6 offset-s3 z-depth-3">
        <form action="control.do" method="post">
        <h4 class="center-align">Editar de Persona</h4>
            <label>Rut</label>
            <input type="text" readonly="true" name="rut" value="${requestScope.persona.rut}"/>
            <br>
            <label>Nombre</label>
            <input type="text" readonly="true" name="nombre" value="${requestScope.persona.nombre}"/>
            <br>
            <label>Mail</label>
            <input type="text" readonly="true" name="mail" value="${requestScope.persona.mail}"/>
            <br>
            <label>Perfil</label>
            <input type="text" readonly="true" name="perfil" value="${requestScope.persona.perfil}"/>
            <label>Activo</label>
            <select name="activo">
                <option ${requestScope.persona.activo?"selected":""}>Si</option><!-- si esta activo aparecera seleccionado el si -->
                <option ${requestScope.persona.activo?"":"selected"}>No</option><!-- si no esta activo aparecera seleccionado el no -->
            </select>
            <br>
            <button class="btn green darken-1" type="submit" name="boton" value="editar">Editar</button>
            <br><br>
        </form>
    </div>
    </div>
    
</c:if>

<c:if test="${empty sessionScope.admin}">
    No tienes permisos para estar aquí.
    <br> <a href="index.jsp">Iniciar sesión</a>
</c:if>

<%@include file="template/footer.jsp" %>