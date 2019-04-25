<%@ include file = "template/header.jsp" %>

<div class="row">
<div class="col-6">
	<div class="col-12 perfilVer border border-primary rounded-circle">
		<img class="crop img-responsive" src="resources/fotos/${verUsuario.usuario}.JPEG">
	</div>
</div>
<div class="col-6"><c:out value="${verUsuario.nombre}"></c:out></div>
</div>

<div class="row">
<c:forEach var="publicaciones" items="${verUsuario.publicacions}">
<div class="col-6 col-lg-3">
<div class="col-12 publicacion border border-primary">
<a href="PublicacionController?pub=${publicaciones.id}">
<img class="img-responsive" src="resources/publicaciones/${publicaciones.id}.jpg">
</a>

     </div>                </div>
</c:forEach>

</div>


<%@ include file = "template/footer.jsp" %>