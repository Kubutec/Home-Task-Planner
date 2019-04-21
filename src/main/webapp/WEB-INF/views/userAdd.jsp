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

        <header style="color: #eeeeee">Dodaj użytkownika</header>

        <%--<div class="card">--%>
            <%--<div class="card-body">--%>
                <%--<a href="/books/list" class="btn btn-primary">Back</a>--%>
            <%--</div>--%>
        <%--</div>--%>

        <div style="background-image: linear-gradient(#f4a460, #c38150 50%)" class="card mt-4">

            <div style="background-image: linear-gradient(#f4a460, #c38150 50%)" class="card-header">
                Użytkownik
            </div>

            <div style="background-image: linear-gradient(#f4a460, #c38150 50%)" class="card-body">

                <div class="row">
                    <div class="form-group col-md-4">
                        <label style="background-image: linear-gradient(#f4a460, #c38150 50%)" for="firstNameId">Imię :</label>
                        <form:input style="background-image: linear-gradient(#f4a460, #c38150 50%)" path="firstName" class="form-control" id="firstNameId"/>
                        <form:errors path="firstName" element="div" cssClass="error"/>
                    </div>

                    <div class="form-group col-md-4">
                        <label style="background-image: linear-gradient(#f4a460, #c38150 50%)" for="secondNameId">Nazwisko :</label>
                        <form:input style="background-image: linear-gradient(#f4a460, #c38150 50%)" path="secondName" class="form-control" id="secondNameId"/>
                        <form:errors path="secondName" element="div" cssClass="error"/>
                    </div>
                    <div class="form-group col-md-4">
                        <label style="background-image: linear-gradient(#f4a460, #c38150 50%)" for="passwordId">Hasło :</label>
                        <form:input style="background-image: linear-gradient(#f4a460, #c38150 50%)" type="password" path="password" class="form-control" id="passwordId"/>
                        <form:errors path="password" element="div" cssClass="error"/>
                    </div>

                    <div class="form-group col-md-4">
                        <label style="background-image: linear-gradient(#f4a460, #c38150 50%)" for="emailId">Adres email :</label>
                        <form:input style="background-image: linear-gradient(#f4a460, #c38150 50%)"  path="email" class="form-control" id="emailId"/>
                        <form:errors path="email" element="div" cssClass="error"/>
                    </div>

                </div>

                <input style="background-image: linear-gradient(#f4a460, #c38150 50%)" type="submit" value="Save">

            </div>


        </div>

    </div>

</form:form>

</body>
</html>