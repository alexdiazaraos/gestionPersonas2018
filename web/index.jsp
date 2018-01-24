<%@include file="template/header.jsp" %>
<div class="row"></div>
<div class="row">
    <div class="col s4 offset-s4 z-depth-3">
        <h4 class="center-align">Ingreso</h4>
        <form action="control.do" method="post">
            <label>Rut</label>
            <input type="text" name="rut"/>
            <br><br>
            <label>Clave</label>
            <input type="text" name="clave"/>
            <br><br>
            <button class="btn right" type="submit" name="boton" value="login">Ingresar</button>
            <br><br>
            <a href="registro.jsp">Si no tienes cuenta registrate Aquí</a>
            <br><br>
        </form>
        <br>
        ${requestScope.msg}
    </div>
</div>
<%@include file="template/footer.jsp" %>