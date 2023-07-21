<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


<h1>Alarmas</h1>

<div class="card mt-1">

	<div class="card-header mb-3 bg-info">Soldaduras de la pieza</div>
	<div class="card-body">
		<table id="ordertable" class="tableOrder table table-bordered table-hover table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Estado</th>
					<th>Intensidad</th>
					<th>Voltaje</th>
					<th>Tolerancia</th>
					<th>Pieza</th>
					<th>Alarma</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${welds}" var="weld">
					<c:choose>
						<c:when test="${weld.state == 'PENDIENTE'}">
							<c:set var="warning" value="table-warning"></c:set>
						</c:when>
						<c:otherwise>
							<c:set var="warning" value=""></c:set>
						</c:otherwise>
					</c:choose>
					<tr class="${warning}">
						<td>${weld.id}</td>
						<td>${weld.state}</td>
						<td>${weld.amp}</td>
						<td>${weld.volt}</td>
						<td>${weld.tolerance}</td>
						<td>${weld.piece.projectMachine.project.name}</td>
						<td>${weld.alarm.info}</td>
						<td><a href="/verSoldadura/${weld.id}"
							class=" btn btn-primary btn-sm active" role="button"
							aria-pressed="true"><i class="bi bi-eye"></i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/inicio" class=" btn btn-primary mt-4" role="button"
			aria-pressed="true">Volver</a>
	</div>
	<div class="col-md-6">
		<canvas id="myChart"></canvas>
	</div>

</div>