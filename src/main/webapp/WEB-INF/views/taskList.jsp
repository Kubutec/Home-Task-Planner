<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
    <script>
        function confirmDelete(id, title) {
            if (confirm("Czy na pewno chcesz usunąć \"" + title + "\"?")) {
                window.location.href = "/tasks/delete/" + id;
            }
        }
    </script>
    <title>Title</title>
</head>

<body>
<%@include file="/WEB-INF/views/header.jspf"%>

<div class="container">

    <header style="color: #eeeeee">Lista zadań</header>

    <div class="card mt-4">
        <div style="background-image: linear-gradient(#f4a460, #c38150 50%)" class="card-body">

            <table style="background-image: linear-gradient(#f4a460, #c38150 50%)" class="table table-hover">
                <tr>
                    <th>Kategoria</th>
                    <th>Tytuł</th>
                    <th>Instrukcje</th>
                    <th>Data utworzenia</th>
                    <th>Data wygaśnięcia</th>
                    <th>Priorytet</th>
                    <th style="width: 15%">Actions</th>
                </tr>
                <c:forEach items="${tasks}" var="task">
                    <tr>
                        <td>${task.taskCategory.categoryName}</td>
                        <td>${task.title}</td>
                        <td>${task.instruction}</td>
                        <td>${task.createDate}</td>
                        <td>${task.expireDate}</td>
                        <td>${task.priority.name}</td>
                        <td>
                            <a href="/tasks/update/${task.id}" class="btn btn-success">Zmodyfikuj</a>
                            <a href="#" onclick="confirmDelete(${task.id}, '${task.title}')" class="btn btn-danger">Usuń</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>

</body>

</html>