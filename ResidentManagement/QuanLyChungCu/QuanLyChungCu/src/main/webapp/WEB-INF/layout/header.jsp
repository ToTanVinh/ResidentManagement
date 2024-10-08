<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String lang = request.getParameter("lang");
    if (lang != null) {
        session.setAttribute("basename", lang);
    } else if (session.getAttribute("basename") == null) {
        session.setAttribute("basename", "vi_VN");
    }
%>
<fmt:setBundle basename="index_${sessionScope.basename}" scope="session" />
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">DV Apartment</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <div class="navbar-nav me-auto justify-content-between w-100">
                <div class="d-flex ">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/" />"><fmt:message key="rooms"/></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/users" />"><fmt:message key="user"/></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/lockers" />"><fmt:message key="lockers"/></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/orders" />"><fmt:message key="orders"/></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/entries" />"><fmt:message key="entryRight"/></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/parkings" />"><fmt:message key="parkingRight"/></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/invoices" />"><fmt:message key="invoices"/></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/surveys" />"><fmt:message key="surveys"/></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/feedbacks" />"><fmt:message key="feedBacks"/></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/stats" />"><fmt:message key="stats"/></a>
                    </li>
                </div>
                <c:choose>
                    <c:when test="${pageContext.request.userPrincipal.name != null}">
                        <div class="d-flex align-items-center">
                            <li style="color: #fff; margin-right: 10px">
                                <fmt:message key="welcome"/> ${pageContext.request.userPrincipal.name}
                            </li>
                            <li>
                                <button type="button" class="btn btn-primary">
                                    <a style="text-decoration: none; color: #fff" href="<c:url value="/logout" />"><fmt:message key="Logout"/></a>
                                </button>
                            </li>
                        </div>
                    </c:when>
                </c:choose>
            </div>   
        </div>
    </div>
</nav>

<!--<body class="g-sidenav-show  bg-gray-100">

    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

         Sidebar - Brand 
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
        </a>

         Divider 
        <hr class="sidebar-divider my-0">

         Nav Item - Dashboard 
        <li class="nav-item active">
            <a class="nav-link" href="index.html">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Dashboard</span></a>
        </li>

         Divider 
        <hr class="sidebar-divider">

         Heading 
        <div class="sidebar-heading">
            Interface
        </div>

         Nav Item - Pages Collapse Menu 
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
               aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-cog"></i>
                <span>Components</span>
            </a>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Custom Components:</h6>
                    <a class="collapse-item" href="buttons.html">Buttons</a>
                    <a class="collapse-item" href="cards.html">Cards</a>
                </div>
            </div>
        </li>

         Nav Item - Utilities Collapse Menu 
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
               aria-expanded="true" aria-controls="collapseUtilities">
                <i class="fas fa-fw fa-wrench"></i>
                <span>Utilities</span>
            </a>
            <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                 data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Custom Utilities:</h6>
                    <a class="collapse-item" href="utilities-color.html">Colors</a>
                    <a class="collapse-item" href="utilities-border.html">Borders</a>
                    <a class="collapse-item" href="utilities-animation.html">Animations</a>
                    <a class="collapse-item" href="utilities-other.html">Other</a>
                </div>
            </div>
        </li>

         Divider 
        <hr class="sidebar-divider">

         Heading 
        <div class="sidebar-heading">
            Addons
        </div>

         Nav Item - Pages Collapse Menu 
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
               aria-expanded="true" aria-controls="collapsePages">
                <i class="fas fa-fw fa-folder"></i>
                <span>Pages</span>
            </a>
            <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Login Screens:</h6>
                    <a class="collapse-item" href="login.html">Login</a>
                    <a class="collapse-item" href="register.html">Register</a>
                    <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
                    <div class="collapse-divider"></div>
                    <h6 class="collapse-header">Other Pages:</h6>
                    <a class="collapse-item" href="404.html">404 Page</a>
                    <a class="collapse-item" href="blank.html">Blank Page</a>
                </div>
            </div>
        </li>

         Nav Item - Charts 
        <li class="nav-item">
            <a class="nav-link" href="charts.html">
                <i class="fas fa-fw fa-chart-area"></i>
                <span>Charts</span></a>
        </li>

         Nav Item - Tables 
        <li class="nav-item">
            <a class="nav-link" href="tables.html">
                <i class="fas fa-fw fa-table"></i>
                <span>Tables</span></a>
        </li>

         Divider 
        <hr class="sidebar-divider d-none d-md-block">

         Sidebar Toggler (Sidebar) 
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

         Sidebar Message 
        <div class="sidebar-card d-none d-lg-flex">
            <img class="sidebar-card-illustration mb-2" src="img/undraw_rocket.svg" alt="...">
            <p class="text-center mb-2"><strong>SB Admin Pro</strong> is packed with premium features, components, and more!</p>
            <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a>
        </div>

    </ul>
</body>-->