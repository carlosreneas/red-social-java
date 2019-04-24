<%@ include file = "template/header.jsp" %>

<div class="row">
<c:forEach var="siguiendo" items="${usuario.amistads1}">
<div class="perfildiv col-6 col-lg-3">
<div class="perfil col-12">
<img class="crop img-responsive" src="resources/fotos/${siguiendo.usuario2.usuario}.JPEG">
     </div>                </div>
</c:forEach>

</div>
<%@ include file = "template/footer.jsp" %>