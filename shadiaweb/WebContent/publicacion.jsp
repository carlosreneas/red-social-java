<%@ include file = "template/header.jsp" %>

<div class="row">

	<div class="col-12 perfilVer border border-primary">
		<img class="img-responsive" src="resources/publicaciones/${publicacion.id}.jpg">
	</div>


</div>

<div class="row">
<c:forEach var="comentario" items="${publicacion.comentarios}">

<div class="col-12">
${comentario.fechapublicacion} ${comentario.usuario.usuario}
    </div>                
</c:forEach>

</div>



<%@ include file = "template/footer.jsp" %>