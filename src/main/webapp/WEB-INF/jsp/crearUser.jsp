<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:if test="${action == 'update'}">
<h1>Modificar administrador</h1>
</c:if>
<c:if test="${action == 'new'}">
<h1>Crear administrador</h1>
</c:if>

<div class="card mt-1">
	<div class="card-header mb-3 bg-info">Rellena los datos requeridos</div>
	<div class="card-body">
		<form:form method="POST" action="/guardarUser"
			modelAttribute="user">
			<!--form:hidden path="machines"/-->
			<table>
				<c:if test="${action == 'update'}">
					<tr>
						<td><form:label path="id" class= "form-label mb-3">ID</form:label></td>
						<td><form:input path="id" class= "form-control mb-3" /></td>
					</tr>
				</c:if>
				<tr>
					<td><form:label path="name" class= "form-label mb-3">Nombre</form:label></td>
					<td><form:input path="name" class= "form-control mb-3" /></td>
				</tr>
				<c:if test="${action == 'new'}">
				<tr>
					<td><form:label path="password" class= "form-label mb-3">Contrase�a</form:label></td>
					<td><form:input path="password" class= "form-control mb-3"/></td>
				</tr>
				</c:if>
				<tr>
				
					<td><form:label path="email" class= "form-label mb-3">Email</form:label></td>
					<td><form:input path="email" class= "form-control mb-3"/></td>
				</tr>
				<tr>
					<td><form:label path="address" class= "form-label mb-3">Direcci�n</form:label></td>
					<td><form:input path="address" class= "form-control mb-3" /></td>
				
				</tr>
				<tr>
					<td><form:label path="phone" class= "form-label mb-3">Tel�fono</form:label></td>
					<td><form:input path="phone" class= "form-control mb-3" /></td>
				</tr>
				<tr>
					<td><input class="btn btn-primary" type="submit" value="Submit"></td>
				</tr>
			</table>
		</form:form>
	</div>
	<div class="col-md-6">
		<canvas id="myChart"></canvas>
	</div>

</div>