
<!DOCTYPE html>
<html lang="en" xmlns:th="http://thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>[[${pageTitle}]]</title>
    <link rel="stylesheet" type="text/css" th:href="@{/webjars/bootstrap/css/bootstrap.min.css}"/>
</head>
<body>
<div class="container-fluid">
    <div class="text-center"><h2>[[${pageTitle}]]</h2></div>

    <form th:action="@{/tasks/save}" method="post" th:object="${tasks}" style="max-width: 500px; margin: 0 auto;">
        <input type="hidden" th:field="*{Tasks}">
        <div class="border border-secondary rounded p-3">

            <div class="form-group row">
                <label class="col-sm-4 col-form-label">Task: </label>
                <div class="col-sm-8">
                    <input type="text" th:field="*{task}" class="form-control" required minlength="8" maxlength="45">
                </div>
            </div>


            <div class="text-center">
                <button type="submit" class="btn btn-primary m-2">Save</button>
                <button type="button" class="btn btn-secondary m-2" onclick="cancelForm()"> Cancel</button>
            </div>
        </div>
    </form>

</div>
<script type="text/javascript">
    function cancelForm(){
        window.location = "[[@{/tasks}]]";
    }
</script>
</body>
</html>