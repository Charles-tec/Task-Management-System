<!DOCTYPE html>
<html lang="en" xmlns:th="http://thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>My Web App</title>
    <link rel="stylesheet" type="text/css" th:href="@{/webjars/bootstrap/css/bootstrap.min.css}"/>
</head>
<body>
<div class="container-fluid text-center">
    <h1>Welcome to my Application!</h1>
    <a class="h2" th:href="@{/users}">Manage Vehicles</a>
</div>
</body>
</html>