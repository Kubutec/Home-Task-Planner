<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">


    <title>Title</title>
</head>
<body>
<%--<img src="../../resources/css/Usersfoto.jpg" style="size: auto">--%>

<%@include file="header.jspf" %>

<form:form method="post" modelAttribute="task">

    <div class="container">

        <header>Dodaj użytkownika</header>

            <%--<div class="card">--%>
            <%--<div class="card-body">--%>
            <%--<a href="/books/list" class="btn btn-primary">Back</a>--%>
            <%--</div>--%>
            <%--</div>--%>

        <div class="card mt-4">

            <div class="card-header">
                Zadania
            </div>

            <div class="card-body">

                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="titleId">Tytuł :</label>
                        <form:input path="title" class="form-control" id="titleId"/>
                        <form:errors path="title" element="div" cssClass="error"/>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="instructionId">Instrukcja :</label>
                        <form:input path="instruction" class="form-control" id="instructionId"/>
                        <form:errors path="instruction" element="div" cssClass="error"/>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="createDateId">Od kiedy :</label>
                        <form:input  path="createDate" class="form-control" id="createDateId"/>
                        <form:errors path="createDate" element="div" cssClass="error"/>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="expireDateId">Do kiedy :</label>
                        <form:input  path="expireDate" class="form-control" id="expireDateId"/>
                        <form:errors path="expireDate" element="div" cssClass="error"/>
                    </div>

                </div>

                <input type="submit" value="Save">

            </div>


        </div>

    </div>

</form:form>

</body>
</html>