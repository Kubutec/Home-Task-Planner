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

        <header style="color: #eeeeee">Dodaj zadania</header>

            <%--<div class="card">--%>
            <%--<div class="card-body">--%>
            <%--<a href="/books/list" class="btn btn-primary">Back</a>--%>
            <%--</div>--%>
            <%--</div>--%>

        <div style="background-image: linear-gradient(#f4a460, #c38150 50%)" class="card mt-4">

            <div class="card-header">
                Zadanie
            </div>

            <div class="card-body">

                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="taskCategoryId">Kategoria:</label>
                        <form:select style="background-image: linear-gradient(#f4a460, #c38150 50%)" path="taskCategory"
                                     items="${categories}" itemLabel="categoryName" itemValue="id"
                                     class="form-control" id="taskCategoryId"/>
                        <form:errors path="taskCategory" element="div" cssClass="error"/>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="titleId">Tytuł :</label>
                        <form:input style="background-image: linear-gradient(#f4a460, #c38150 50%)" path="title"
                                    class="form-control" id="titleId"/>
                        <form:errors path="title" element="div" cssClass="error"/>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="instructionId">Instrukcja :</label>
                        <form:input style="background-image: linear-gradient(#f4a460, #c38150 50%)" path="instruction"
                                    class="form-control" id="instructionId"/>
                        <form:errors path="instruction" element="div" cssClass="error"/>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="createDateId">Data utworzenia:</label>
                        <form:input style="background-image: linear-gradient(#f4a460, #c38150 50%)" type="date"
                                    path="createDate"
                                    class="form-control" id="createDateId"/>
                        <form:errors path="createDate" element="div" cssClass="error"/>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="expireDateId">Data wygaśnięcia:</label>
                        <form:input style="background-image: linear-gradient(#f4a460, #c38150 50%)" type="date"
                                    path="expireDate"
                                    class="form-control" id="expireDateId"/>
                        <form:errors path="createDate" element="div" cssClass="error"/>
                    </div>
                    <br><br>
                    <div class="form-group col-md-4">
                        <label for="priorityId">Priorytet:</label>
                        <form:select style="background-image: linear-gradient(#f4a460, #c38150 50%)" path="priority"
                                     items="${priorites}" itemLabel="name" itemValue="id"
                                     class="form-control" id="priorityId"/>
                        <form:errors path="priority" element="div" cssClass="error"/>
                    </div>


                </div>

                <input style="background-image: linear-gradient(#f4a460, #c38150 50%)" type="submit" value="Save">

            </div>


        </div>

    </div>

</form:form>

</body>
</html>