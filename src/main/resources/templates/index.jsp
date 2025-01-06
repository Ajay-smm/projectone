<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



	<h2>Student Management</h2>
	<a href="/showNewStudentForm">Add New Student</a>
	<table border="1">
		<thead>
			<tr>
				<th>ID</th>
				<th>RollNo</th>
				<th>Name</th>
				<th>Email</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<tr th:each="student : ${listStudents}">
				<td th:text="${student.id}"></td>
				<td th:text="${student.rollNo}"></td>
				<td th:text="${student.name}"></td>
				<td th:text="${student.emailId}"></td>

				<td>
					<a th:href="@{/showFormForUpdate/{id}(id=${student.id})}">Edit</a>
					<a th:href="@{/deleteStudent/{id}(id=${student.id})}">Delete</a>
					<a th:href="@{/topStudents}">View Top 3 Students</a>


				</td>
			</tr>
		</tbody>
	</table>



</body>
</html>