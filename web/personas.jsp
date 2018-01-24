<%@include file="template/header.jsp" %>

<c:if test="${not empty sessionScope.admin}">
    <%@include file="template/menu.jsp" %>
    <div class="row"></div>
    <div class="row">
    <div class="col s6 offset-s3 z-depth-3">
        <form action="control.do" method="post">
        <h4 class="center-align">Gesti�n de Personas</h4>
        <table class="bordered">
            <thead>
                <tr>
                    <th>Rut</th>
                    <th>Nombre</th>
                    <th>Mail</th>
                    <th>Perfil</th>
                    <th>Activo</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${applicationScope.data}" var="p">
                    <tr>
                        <td>${p.rut}</td>
                        <td>${p.nombre}</td>
                        <td>${p.mail}</td>
                        <td>${p.perfil}</td>
                        <td>${p.activo?"Si":"No"}</td>
                        <td><button name="boton" value="${p.rut}" class="btn-floating blue"><i class="material-icons">edit</i></button></td>
                    </tr>
                </c:forEach> 
            </tbody>
        </table>
        </form>
    </div>
    </div>
    
</c:if>

<c:if test="${empty sessionScope.admin}">
    No tienes permisos para estar aqu�.
    <br> <a href="index.jsp">Iniciar sesi�n</a>
</c:if>

<%@include file="template/footer.jsp" %>