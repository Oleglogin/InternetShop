<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>

<header header-v4>
        <!-- Header desktop -->
        <div class="container-menu-desktop">
            <%--<div class="wrap-menu-desktop how-shadow1">--%>
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
                                <a href="/welcome">Main page</a>
                            </li>


                            <li class="label1" data-label1="hot">
                                <a href="/seller">Add product</a>
                            </li>

                        </ul>
                    </div>

                    <!-- Icon header -->
                    <div class="wrap-icon-header flex-w flex-r-m">
                        <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                            <i class="zmdi zmdi-search"></i>
                        </div>

                        <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="${countProductInBascet}">
                            <i class="zmdi zmdi-shopping-cart"></i>
                        </div>

                        <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
                            <i class="zmdi zmdi-favorite-outline"></i>
                        </a>
                    </div>

                </nav>
            <%--</div>--%>
        </div>
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
                        <div class="flex-w flex-r-m p-b-10">
                            <div class="size-203 flex-c-m respon6">
                                Count
                            </div>
                            <div class="size-204 respon6-next">
                                <div class="rs1-select2 bor8 bg0">
                                    <form:select path="count" class="js-select2">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                    </form:select>
                                    <div class="dropDownSelect2"></div>
                                </div>
                            </div>
                            <input class="p-t-33">

                            <form:input type="hidden" path="id" readonly="true"/>
                            <input type="submit" value="Ok" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </div>
                    </form:form>
                    <!--  ------------------------------------------------------->
                </div>
            </div>
        </div>
    </div>
</section>
<%@include file="tmp/footer.jsp" %>
