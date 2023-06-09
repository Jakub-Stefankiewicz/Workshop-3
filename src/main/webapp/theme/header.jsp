<%--
  Created by IntelliJ IDEA.
  User: pannorris
  Date: 18.03.2023
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>


<body id="page-top">
<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
            <a class="nav-link" href="<c:url value="/theme/css/sb-admin-2.css"/>">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Dashboard</span></a>
        </li>

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>


                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - User Information -->
                    <!--                        <li class="nav-item dropdown no-arrow">-->
                    <!--                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"-->
                    <!--                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">-->
                    <!--                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>-->
                    <!--                                <img class="img-profile rounded-circle"-->
                    <!--                                    src="theme/img/undraw_profile.svg">-->
                    <!--                            </a>-->
                    <!--                            &lt;!&ndash; Dropdown - User Information &ndash;&gt;-->
                    <!--                            <div class="dropdown-menu dropdown-menu-right shadow animated&#45;&#45;grow-in"-->
                    <!--                                aria-labelledby="userDropdown">-->
                    <!--                                <a class="dropdown-item" href="#">-->
                    <!--                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>-->
                    <!--                                    Profile-->
                    <!--                                </a>-->
                    <!--                                <a class="dropdown-item" href="#">-->
                    <!--                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>-->
                    <!--                                    Settings-->
                    <!--                                </a>-->
                    <!--                                <a class="dropdown-item" href="#">-->
                    <!--                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>-->
                    <!--                                    Activity Log-->
                    <!--                                </a>-->
                    <!--                                <div class="dropdown-divider"></div>-->
                    <!--                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">-->
                    <!--                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>-->
                    <!--                                    Logout-->
                    <!--                                </a>-->
                    <!--                            </div>-->
                    <!--                        </li>-->

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">User CRUD</h1>
                    <a href="/userAdd" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                            class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
                </div>

</body>
</html>




