<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>

<header>
    <nav class="limiter-menu-desktop container">

        <!-- Logo desktop -->
        <a href="#" class="logo">
            <img src="../../resources/images/icons/logo-01.png" alt="IMG-LOGO">
        </a>
        <!-- Menu desktop -->
        <div class="menu-desktop">
            <ul class="main-menu">
                <li class="active-menu label1" data-label1="hot">
                <li>
                    <a href="/welcome">Main</a>
                </li>
                <ul class="sub-menu">
                    <li>
                        <c:if test="${currentUser.authority == 'ROLE_SELLER'}">
                            <a href="/seller">seller</a>
                        </c:if>
                    </li>
                    <li>
                        <c:if test="${currentUser.authority == 'ROLE_ADMIN'}">
                            <a href="/admin">admin</a>
                        </c:if>
                    </li>
                </ul>
                </li>
                <li>
                    <a href="/registration">Sign up</a>
                </li>
                <li>
                    <a href="/login">Sign in</a>
                </li>
                <li>
                    <a href="/logout">Exit</a>
                </li>
                <li>
                    <a href="#">Contact</a>
                </li>
            </ul>
        </div>

        <!-- Icon header -->
        <div class="wrap-icon-header flex-w flex-r-m">
            <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="${countProductInBasket}">
                <a href="/basket"><i class="zmdi zmdi-shopping-cart"></i></a>
            </div>
            <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                <i class="zmdi zmdi-search"></i>
            </div>
            <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
                <i class="zmdi zmdi-favorite-outline"></i>
            </a>
        </div>
    </nav>
</header>


<!-- Product Detail -->
<section class="sec-product-detail bg0 p-t-65 p-b-60">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-7 p-b-30">
                <div class="p-l-25 p-r-30 p-lr-0-lg">
                    <div class="slick3 gallery-lb">
                        <div class="wrap-pic-w pos-relative">
                            <img src="${user.account.avatar}" alt="">
                        </div>
                    </div>
                </div>
                <c:if test="${user.account.avatar == null}">
                    <div class="p-l-25 p-r-30 p-lr-0-lg">
                        <div class="slick3 gallery-lb">
                            <div class="wrap-pic-w pos-relative">
                                <img src="/resources/images/icons/avatar.png" alt="">
                            </div>
                        </div>
                    </div>
                </c:if>
            </div>
            <div class="p-r-50 p-t-5 p-lr-0-lg">
                <c:if test="${countAccount < 1}">
                    <h4 class="mtext-105 cl2 js-name-detail p-b-14">
                        <a href="/account/${user.id}">Fill your Account</a>
                    </h4>
                </c:if>
                <c:if test="${countAccount >= 1}">
                    <h4 class="mtext-105 cl2 js-name-detail p-b-14">
                        <a href="/editAccount/${user.id}">Edit your Account</a>
                    </h4>
                </c:if>
                <span class="mtext-106 cl2">
                    ${currentUser.username}
                </span>
                <h4 class="mtext-105 cl2 js-name-detail p-b-14">
                    ${user.account.phone}
                </h4>
                <span class="mtext-106 cl2">
                    ${user.account.country}
                </span>
            </div>
        </div>
    </div>


</section>



<%@include file="tmp/footer.jsp" %>