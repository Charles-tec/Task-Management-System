
<!DOCTYPE html>
<html lang="en" xmlns:th="http://thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Manage Users</title>
    <link rel="stylesheet" type="text/css" th:href="@{/webjars/bootstrap/css/bootstrap.min.css}"/>
</head>
<body>
<div class="container-fluid text-center">
    <div><h1>Manage Users!</h1></div>
    <div class="mr-2">
        <a class="h3" th:href="@{/tasks/new}">Add New Task</a>
    </div>

    <div th:if="${message}" class="alert alert-success text-center">
        [[${message}]]
    </div>

    <div>
        <table class="table table-bordered">
            <thead class="thead-dark">
            <tr>
                <th>Task</th>

                <th></th>
            </tr>
            </thead>
            <tbody>
            <th:block th:each="tasks : ${taskList}">
                <tr>
                    <td>[[${tasks.task}]]</td>
                    <
                    <td>
                        <a class="h4 mr-3" th:href="@{'/tasks/edit/' + ${tasks.task}}">Edit</a>
                        <a class="h4" th:href="@{'/tasks/delete/' + ${tasks.task}}">Delete</a>
                    </td>
                </tr>
            </th:block>
            </tbody>
        </table>
    </div>


</div>
</body>
</html>