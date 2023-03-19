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

  <title>Workshop 3: Users List</title>

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
  <div class="row">

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
                  <a href="/userDelete?id=${user.id}"> Delete </a>
                  <a href="/userEdit?id=${user.id}"> Edit </a>
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

  </div>

</div>
<!-- End of Main Content -->


<%@include file="/theme/footer.jsp"%>

</body>
</html>
