<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:set var = "salary" scope = "session" value = "${2000*2}"/>
      <c:if test = "${salary > 5000}">
         <p>My salary is:  <c:out value = "${salary}"/><p>
      </c:if>
      
      
 <jsp:useBean id="uDao" class="model.UsuarioDao" scope="request">
 	</jsp:useBean>

<table>
    <thead>
    <tr><th>Id</th><th>Nombre</th>
    <th>Apellido</th><th>Acciones</th></tr>
    </thead>
    <tbody>
    <c:forEach var="usuario" items="${uDao.list()}">
       <tr><td>${usuario.id}</td>
        <td>${usuario.nombre}</td>
        <td>${usuario.apellido}</td>
        <td><a href='/detalleProfesor.jsp?id=${usuario.id}'>
              <input type="submit" value="Detalle"/></a>
            <a href='/eliminarProfesor.jsp?id=${usuario.id}'>
              <input type="submit" value="Eliminar"/></a></td></tr>
    </c:forEach>
   </tbody>
   <tfoot>

   </tfoot>
  </table>

      
</body>
</html>