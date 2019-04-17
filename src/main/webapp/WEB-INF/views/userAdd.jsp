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

<form:form method="post" modelAttribute="user">

    <div class="container">

        <header>Dodaj użytkownika</header>

        <%--<div class="card">--%>
            <%--<div class="card-body">--%>
                <%--<a href="/books/list" class="btn btn-primary">Back</a>--%>
            <%--</div>--%>
        <%--</div>--%>

        <div class="card mt-4">

            <div class="card-header">
                Użytkownicy
            </div>

            <div class="card-body">

                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="firstNameId">Imię :</label>
                        <form:input path="firstName" class="form-control" id="firstNameId"/>
                        <form:errors path="firstName" element="div" cssClass="error"/>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="secondNameId">Nazwisko :</label>
                        <form:input path="secondName" class="form-control" id="secondNameId"/>
                        <form:errors path="secondName" element="div" cssClass="error"/>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="passwordId">Hasło :</label>
                        <form:input type="password" path="password" class="form-control" id="passwordId"/>
                        <form:errors path="password" element="div" cssClass="error"/>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="emailId">Adres email :</label>
                        <form:input  path="email" class="form-control" id="emailId"/>
                        <form:errors path="email" element="div" cssClass="error"/>
                    </div>

                </div>

                <input type="submit" value="Save">

            </div>


        </div>

    </div>

</form:form>

</body>
</html>