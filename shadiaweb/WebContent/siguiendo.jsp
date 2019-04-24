<%@ include file = "template/header.jsp" %>

<div class="row">

<c:forEach var="siguiendo" items="${usuario.amistads2}">
<div class="col-6 col-lg-3">
<div class="col-12 perfil border border-primary rounded-circle">
<img class="crop img-responsive" src="resources/fotos/${siguiendo.usuario1.usuario}.JPEG">
     </div>                </div>
</c:forEach>

</div>
<%@ include file = "template/footer.jsp" %>