<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
    <script>
        function confirmDelete(id, firstName,secondName) {
            if (confirm("Czy na pewno chcesz usunąć \"" + firstName + secondName + "\"?")) {
                window.location.href = "/users/delete/" + id;
            }
        }
    </script>
    <title>Title</title>
</head>

<body>
<%@include file="/WEB-INF/views/header.jspf"%>

<div class="container">

    <header>Użytkownicy</header>

    <div class="card mt-4">
        <div class="card-body">

            <table class="table table-hover">
                <tr>
                    <th>Imię</th>
                    <th>Nazwisko</th>
                    <th>Email</th>
                    <th style="width: 15%">Actions</th>
                </tr>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.firstName}</td>
                        <td>${user.secondName}</td>
                        <td>${user.email}</td>
                        <td>
                            <a href="/users/update/${user.id}" class="btn btn-success">Zmodyfikuj</a>
                            <a href="/users/delete/${user.id}" onclick="confirmDelete(${user.id}, '${user.firstName}')" class="btn btn-danger">Usuń</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>

</body>

</html>