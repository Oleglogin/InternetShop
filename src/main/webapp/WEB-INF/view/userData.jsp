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
                <c:if test="${countAccount < 1 && currentUser.id == user.id}">
                    <h4 class="mtext-105 cl2 js-name-detail p-b-14">
                        <a href="/account/${user.id}">Fill  Account</a>
                    </h4>
                </c:if>
                <c:if test="${countAccount >= 1 && currentUser.id == user.id}">
                    <h4 class="mtext-105 cl2 js-name-detail p-b-14">
                        <a href="/editAccount/${user.account.id}">Edit  Account</a>
                    </h4>
                </c:if>
                <span class="mtext-106 cl2">
                    ${user.username}
                </span>
                <h4 class="mtext-105 cl2 js-name-detail p-b-14">
                    ${user.account.phone}
                </h4>
                <span class="mtext-106 cl2">
                    ${user.account.country}
                </span>
                <%--<span class="mtext-106 cl2">--%>
                    <%--accountNonLocked <a href="Locked/${user.id}">${user.accountNonLocked}</a>--%>
                <%--</span>--%>

                <div class="block2-pic hov-img0 js-show-modal1">
                    <%--<a href="productData/${product.id}"><img src="${product.productImg}" alt="IMG-PRODUCT"/></a>--%>
                        <a>accountNonLocked ${user.accountNonLocked}</a>
                        <%--accountNonLocked <a href="Locked/${user.id}">${user.accountNonLocked}</a>--%>
                    <%--<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">--%>
                        <%--Quick View--%>
                    <%--</a>--%>
                </div>

            </div>
        </div>
    </div>


</section>


<!-- Modal1 -->
<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
    <div class="overlay-modal1 js-hide-modal1"></div>

    <div class="container">
        <div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
            <div class="row">
                <div class="col-md-6 col-lg-5 p-b-30">
                    <div class="p-r-50 p-t-5 p-lr-0-lg">
                        <h4 class="mtext-105 cl2 js-name-detail p-b-14">
                            Lightweight Jacket
                        </h4>
                        <p class="stext-102 cl3 p-t-23">
                            Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.
                        </p>
                        <!--  -->
                        <%--<form:form action="userData/Locked/${user.id}">--%>
                            <%--<div class="p-t-33">--%>
                                <%--<div class="flex-w flex-r-m p-b-10">--%>
                                    <%--<div class="size-203 flex-c-m respon6">--%>
                                        <%--Change--%>
                                    <%--</div>--%>

                                    <%--<div class="size-204 respon6-next">--%>
                                        <%--<div class="rs1-select2 bor8 bg0">--%>
                                            <%--<form:select path="accountNonLocked" class="js-select2" name="time">--%>
                                                <%--<option>Choose an option</option>--%>
                                                <%--<option>true</option>--%>
                                                <%--<option>false</option>--%>
                                            <%--</form:select>--%>
                                            <%--<div class="dropDownSelect2"></div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>


                                <%--<div class="flex-w flex-r-m p-b-10">--%>
                                    <%--<div class="size-204 flex-w flex-m respon6-next">--%>
                                        <%--<button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">--%>
                                            <%--Add to cart--%>
                                        <%--</button>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</form:form>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<%@include file="tmp/footer.jsp" %>