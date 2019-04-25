<%@ include file = "template/header.jsp" %>

<div class="row">

<c:forEach var="siguiendo" items="${usuario.amistads1}">
<div class="col-6 col-lg-3">
<div class="col-12 perfil border border-primary rounded-circle">
<a href="UsuarioController?user=${siguiendo.usuario2.usuario}">
<img class="crop img-responsive" src="resources/fotos/${siguiendo.usuario2.usuario}.JPEG">
     </div>                </div>
</c:forEach>
</a>
</div>
<%@ include file = "template/footer.jsp" %>