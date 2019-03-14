<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>


<header>
    <!-- Header desktop -->
    <div class="container-menu-desktop">
        <div class="wrap-menu-desktop">
            <nav class="limiter-menu-desktop container">

                <!-- Logo desktop -->
                <a href="#" class="logo">
                    <img src="../../resources/images/icons/logo-01.png" alt="IMG-LOGO">
                </a>

                <!-- Menu desktop -->
                <div class="menu-desktop">
                    <ul class="main-menu">
                        <li>
                            <h2>Hello ${currentUser.username}</h2>
                        </li>

                        <li>
                            <a href="welcome">Main page</a>
                        </li>


                        <li class="label1" data-label1="hot">
                            <a href="/registration">Sign up</a>
                        </li>

                        <li>
                            <a href="/login">Sign in</a>
                        </li>

                        <li>
                            <a href="logout">Exit</a>
                        </li>


                    </ul>
                </div>

                <!-- Icon header -->
                <div class="wrap-icon-header flex-w flex-r-m">
                    <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                        <i class="zmdi zmdi-search"></i>
                    </div>

                    <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="2">
                        <i class="zmdi zmdi-shopping-cart"></i>
                    </div>

                    <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
                        <i class="zmdi zmdi-favorite-outline"></i>
                    </a>
                </div>

            </nav>
        </div>
    </div>
</header>


<div class="container">
    <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
            <a class="nav-link" href="/Main page">Main page</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="/logout">Exit</a>
        </li>
    </ul>

    <div class="container-fluid">
        <div class="row">
            <div class="col-xs col-xl-10">
                <h2>${user.username}</h2>
                <br/>
                <c:forEach items="${purchaseList}" var="purchase">
                    <c:if test="${user.username == purchase.user.username}">
                        <span>${purchase.product.title}</span>
                        <br/>
                        <span>${purchase.count}</span>
                        <br/>
                    </c:if>

                </c:forEach>
                </div>
            </div>
        </div>


    </div>




<%@include file="tmp/footer.jsp" %>