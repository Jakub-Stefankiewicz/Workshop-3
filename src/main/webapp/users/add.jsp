<%--
  Created by IntelliJ IDEA.
  User: pannorris
  Date: 18.03.2023
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Workshop 3: Add User</title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value="/theme/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value="/theme/css/sb-admin-2.css"/>" rel="stylesheet">
    <link href="<c:url value="/theme/vendor/datatables/dataTables.bootstrap4.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/theme/css/sb-admin-2.min.css"/>" rel="stylesheet">

</head>



<%@include file="/theme/header.jsp"%>

  <!-- Content Row -->

<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">

                <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>

                <div class="col-lg-7">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Dodaj użytkownika</h1>

                            <c:if test="${wrongpassword!=null}">
                                <h1 class="h4 text-gray-100 mb-4 bg-gradient-danger">Wpisz dwa razy to samo hasło</h1>
                            </c:if>

                        </div>
                        <form class="user" action="/userAdd" method="post">
                            <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="name"
                                           placeholder="Nazwa użytkownika">
                                </div>

                            <div class="form-group">
                                <input type="email" class="form-control form-control-user" name="email"
                                       placeholder="Email Address">
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="password" class="form-control form-control-user"
                                           name="password" placeholder="Password">
                                </div>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control form-control-user"
                                           name="repeatedPassword" placeholder="Repeat Password">
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-user btn-block">Dodaj użytkownika</button>


                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- End of Main Content -->


<%@include file="/theme/footer.jsp"%>


</html>
