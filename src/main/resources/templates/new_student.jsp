<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Add New Student</title>
</head>
<body>
    <h2>Add New Student</h2>
    <form th:action="@{/saveStudent}" th:object="${student}" method="post">
		   <label>RollNo:</label>
        <input type="text" th:field="*{rollNo}" required="required" />
        <label>Name:</label>
        <input type="text" th:field="*{name}" required="required" />
        <label>Email:</label>
        <input type="email" th:field="*{emailId}" required="required" />

        <button type="submit">Save</button>
    </form>
</body>
</html>

