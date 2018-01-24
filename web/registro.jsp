<%@include file="template/header.jsp" %>
<div class="row"></div>
<div class="row">
    <div class="col s6 offset-s3 z-depth-3">
        <form action="#" method="post">
            <br><br>
            <h3 class="center-align">Registro de Usuario</h3>
            <label>Rut</label>
            <input type="text" name="rut" value=""/>
            <br><br>
            <label>Nombre</label>
            <input type="text" name="nombre"/>
            <br><br>
            <label>Mail</label>
            <input type="text" name="mail"/>
            <br><br>
            <label>Clave</label>
            <input type="text" name="clave"/>
            <br><br>
            <label>Confirmar</label>
            <input type="text" name="confirmar"/>
            <br><br>
            <button class="btn right" type="submit" name="boton" value="registro">Registrarse</button>
            <br><br>
        </form>
        <br>
        ${requestScope.msg}
        
    </div>
</div>
<%@include file="template/footer.jsp" %>