<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Top Three Students</title>
</head>
<body>
    <h3>Top 3 Students</h3>


        <a href="/" th:href="@{/}">Back to Home</a>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>RollNo</th>
                <th>Name</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr th:each="student : ${topStudents}">
                <td th:text="${student.id}"></td>
                <td th:text="${student.rollNo}"></td>
                <td th:text="${student.name}"></td>
                <td th:text="${student.emailId}"></td>
            </tr>
        </tbody>
    </table>
</body>
</html>
