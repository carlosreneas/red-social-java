<%@ include file = "template/header.jsp" %>

<div class="row">
<section class="col-12 col-md-6">
	
</section>
<aside class="col-12 col-md-6">
		<!-- Default form login -->
	<form method="POST" class="text-center border border-light p-5" 
		action="LoginController" id="formRegister">
	    <p class="h4 mb-4">Ingresar</p>
	    <!-- Email -->
	    <input type="text" id="usuario" name="usuario" class="form-control mb-4" placeholder="Usuario">
	    <!-- Password -->
	    <input type="password" id="password" name="password" class="form-control mb-4" placeholder="Password">
	    <div class="d-flex justify-content-around">
	        <div>
	            <!-- Remember me -->
	            <div class="custom-control custom-checkbox">
	                <input type="checkbox" class="custom-control-input" id="defaultLoginFormRemember">
	                <label class="custom-control-label" for="defaultLoginFormRemember">Recuerdame</label>
	            </div>
	        </div>
	        <div>
	            <!-- Forgot password -->
	            <a href="">Recordar password?</a>
	        </div>
	    </div>
	    <!-- Sign in button -->
	    <button class="btn btn-info btn-block my-4" id="boton" type="submit">Ingresar</button>
	    <!-- Register -->
	    <p>No eres miembro?
	        <a href="registro.html">Registrate</a>
	    </p>
	    
	</form>
	</aside>

</div>

<%@ include file = "template/footer.jsp" %>
