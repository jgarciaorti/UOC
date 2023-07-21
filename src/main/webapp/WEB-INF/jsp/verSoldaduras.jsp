<%@page import="com.weldtic.enums.WeldStatus"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<%--Es una forma de traer el valor de los enums y no tener que usar string en los if --%>
<c:set var="PENDIENTE" value="<%=WeldStatus.PENDIENTE%>"/>

<h1>Soldaduras</h1>
<div class="card mt-1">
	<div class="card-header mb-3 bg-info">Listado de soldaduras</div>
	<div class="card-body">
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th>Id</th>
					<th>Estado</th>
					<th>Intensidad</th>
					<th>Voltaje</th>
					<th>Proyecto</th>
					<th>Pieza</th>
					<th>Alarma</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			
				<c:forEach items="${welds}" var="weld">
					<c:if test="${weld.state == PENDIENTE}">
						<c:set var="color" value="bg-warning text-dark"></c:set>
					</c:if>
					<c:if test="${weld.state == 'ACEPTADA'}">
						<c:set var="color" value="bg-success text-dark"></c:set>
					</c:if>
					<c:if test="${weld.state == 'RECHAZADA'}">
						<c:set var="color" value="bg-danger text-dark"></c:set>
					</c:if>
					<c:if
						test="${weld.state == 'INICIADA' || weld.state == 'FINALIZADA' || weld.state == 'CREADA'}">
						<c:set var="color" value="bg-info text-dark"></c:set>
					</c:if>
					<tr>
						<td>${weld.id}</td>
						<td><span class="badge rounded-pill ${color}"
							data-bs-toggle="tooltip" data-bs-placement="top"
							title="${weld.state}"> ${weld.state}</span></td>
						<td>${weld.amp}</td>
						<td>${weld.volt}</td>
						<td>${weld.piece.projectMachine.project.name}</td>
						<td>${weld.piece.name}</td>
						<td>${weld.alarm.name}</td>
						<td><a href="/verSoldadura/${weld.id}"
							class=" btn btn-primary btn-sm active" role="button"
							aria-pressed="true"><i class="bi bi-eye"></i></a> <a
							href="/verPieza/${weld.piece.id}/quitarSoldadura/${weld.id}"
							class=" btn btn-danger btn-sm active" role="button"
							aria-pressed="true"><i class="bi bi-trash"></i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="col-md-6">
		<canvas id="myChart"></canvas>
	</div>

</div>