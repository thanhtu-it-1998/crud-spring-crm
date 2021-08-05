<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<title>Save Customer</title>

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
</head>

<body>

	<div class="p-3 mb-2 bg-success text-white">
		<h2>CRM - Customer Relationship Manager</h2>
	</div>

	<div id="container">
		<h3>Save Customer</h3>

		<form:form action="saveCustomer" modelAttribute="customer"
			method="POST">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />

			<table class="table table-borderless">
				<tbody>
					<tr>
						<td><label class="form-label">First name:</label></td>
						<td><form:input path="firstName" class="form-control"/></td>
					</tr>

					<tr>
						<td><label class="form-label">Last name:</label></td>
						<td><form:input path="lastName" class="form-control" /></td>
					</tr>

					<tr>
						<td><label class="form-label">Email:</label></td>
						<td><form:input path="email" class="form-control" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save"  class="btn btn-info w-100" /></td>
					</tr>


				</tbody>
			</table>


		</form:form>

		<div style=""></div>

		<p>
			<a href="${pageContext.request.contextPath}/customer/list" class="btn btn-primary mt-4" >Back
				to List</a>
		</p>

	</div>

</body>

</html>










