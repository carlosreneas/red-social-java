<%@ include file = "template/header.jsp" %>

<div class="row">

<c:forEach var="siguiendo" items="${usuario.amistads1}">
<div class="col-lg-3">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
        
              </div>
</c:forEach>

</div>
<%@ include file = "template/footer.jsp" %>