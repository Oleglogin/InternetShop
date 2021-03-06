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
                <li>
                    <a href="/userData/${currentUser.id}">${currentUser.username} Home</a>
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
                <li class="zmdi zmdi-favorite-outline"></li>
            </a>
        </div>
    </nav>
</header>

<!-- breadcrumb -->
<div class="container">
    <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">

        <a href="/sortByCategory/${product.category}" class="stext-109 cl8 hov-cl1 trans-04">
            ${product.category}
            <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
        </a>

        <span class="stext-109 cl4">
            ${product.title}
        </span>
    </div>
</div>

<!-- Product Detail -->
<section class="sec-product-detail bg0 p-t-65 p-b-60">
    <div class="container">
        <div class="row">

            <div class="col-md-6 col-lg-7 p-b-30">
                <div class="p-l-25 p-r-30 p-lr-0-lg">
                    <div class="wrap-slick3-dots"></div>
                    <div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

                    <div class="slick3 gallery-lb">
                        <div class="item-slick3" data-thumb="images/product-detail-01.jpg">
                            <div class="wrap-pic-w pos-relative">
                                <img src="${product.productImg}" alt="IMG-PRODUCT">
                                <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="${product.productImg}">
                                    <i class="fa fa-expand"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Content page -->
            <section class="bg0">
                <div class="container">
                    <div class="flex-w flex-tr">
                        <div class="size-510 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
                            <h4 class="mtext-105 cl2 txt-center p-b-30">
                                Send A Message
                            </h4>
                            <form:form action="/addComments/${currentUser.id}/${product.id}" modelAttribute="emptyComments">
                                <div class="bor8 m-b-30">
                                    <form:input path="comment" class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25" name="msg" placeholder="How Can We Help?"/>
                                </div>
                                <form:input type="hidden" path="id" readonly="true"/>
                                <input type="submit" value="sent" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            </form:form>
                            <c:forEach items="${commentsByProduct}" var="cBp">
                                <p>${cBp.user.id} - ${cBp.comment}</p>
                            </c:forEach>
                        </div>


                    </div>
                </div>
            </section>


            <div class="col-md-6 col-lg-5 p-b-30">
                <div class="p-r-50 p-t-5 p-lr-0-lg">

                    <h4 class="mtext-105 cl2 js-name-detail p-b-14">
                        ${product.title}
                    </h4>

                    <span class="mtext-106 cl2">
                        ${product.price}
                    </span>

                    <p class="stext-102 cl3 p-t-23">
                        ${product.description}
                    </p>
                    <!--  ------------------------------------------------------->
                    <form:form action="/purchaseAdd/${product.id}/${currentUser.id}" modelAttribute="emptyPurchase">
                        <%--<div class="flex-w flex-r-m p-b-10">--%>
                        <div class="wrap-num-product flex-w m-l-auto m-r-0">
                            <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                                <i class="fs-16 zmdi zmdi-minus"></i>
                            </div>

                            <form:input path="count" class="mtext-104 cl3 txt-center num-product"  name="num-product1" value="1"/>

                            <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                                <i class="fs-16 zmdi zmdi-plus"></i>
                            </div>
                        </div>
                        <div class="dropDownSelect2"></div>
                        <%--<input class="p-t-33">--%>

                        <form:input type="hidden" path="id" readonly="true"/>
                        <input type="submit" value="Add to Cart" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <%--</div>--%>
                    </form:form>
                    <!--  ------------------------------------------------------->
                </div>
            </div>
        </div>
    </div>
</section>
<%@include file="tmp/footer.jsp" %>
