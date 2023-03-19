<%--
  Created by IntelliJ IDEA.
  User: pannorris
  Date: 18.03.2023
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>listInput</title>


</head>
<body>


<div class="container-fluid">

    <!-- Page Heading -->
<%--    <h1 class="h3 mb-2 text-gray-800">Dashboard</h1>--%>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Lita użytkowników</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Nazwa użytkownika</th>
                    <th>email</th>
                    <th>Akcja</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.userName}</td>
                    <td>${user.email}</td>
                    <td>
                        <a href="userList"> Delete </a>
                        <a href="userList"> Edit </a>
                        <a href="userList"> Show </a>
                    </td>
                </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>
</div>

</div>



</body>
</html>
