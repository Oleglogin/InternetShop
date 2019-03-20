<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>

<%--<header>--%>
    <%--<nav class="limiter-menu-desktop container">--%>

        <%--<!-- Logo desktop -->--%>
        <%--<a href="#" class="logo">--%>
            <%--<img src="../../resources/images/icons/logo-01.png" alt="IMG-LOGO">--%>
        <%--</a>--%>
        <%--<!-- Menu desktop -->--%>
        <%--<div class="menu-desktop">--%>
            <%--<ul class="main-menu">--%>
                <%--<li class="active-menu label1" data-label1="hot">--%>
                <%--<li>--%>
                    <%--<a href="/welcome">Main</a>--%>
                <%--</li>--%>
                <%--<ul class="sub-menu">--%>
                    <%--<li>--%>
                        <%--<c:if test="${currentUser.authority == 'ROLE_SELLER'}">--%>
                            <%--<a href="/seller">seller</a>--%>
                        <%--</c:if>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<c:if test="${currentUser.authority == 'ROLE_ADMIN'}">--%>
                            <%--<a href="/admin">admin</a>--%>
                        <%--</c:if>--%>
                    <%--</li>--%>
                <%--</ul>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="/registration">Sign up</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="/login">Sign in</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="/logout">Exit</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="#">Contact</a>--%>
                <%--</li>--%>
            <%--</ul>--%>
        <%--</div>--%>

        <%--<!-- Icon header -->--%>
        <%--<div class="wrap-icon-header flex-w flex-r-m">--%>
            <%--<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="${countProductInBasket}">--%>
                <%--<a href="/basket"><i class="zmdi zmdi-shopping-cart"></i></a>--%>
            <%--</div>--%>
            <%--<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">--%>
                <%--<i class="zmdi zmdi-search"></i>--%>
            <%--</div>--%>
            <%--<a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">--%>
                <%--<i class="zmdi zmdi-favorite-outline"></i>--%>
            <%--</a>--%>
        <%--</div>--%>
    <%--</nav>--%>
<%--</header>--%>

<%--<section class="sec-product-detail bg0 p-t-65 p-b-60">--%>
    <%--<div class="container">--%>
        <%--<div class="row">--%>

            <%--<div class="col-md-6 col-lg-5 p-b-30">--%>
                <%--<div class="p-r-50 p-t-5 p-lr-0-lg">--%>

                    <%--<!--  ------------------------------------------------------->--%>
                    <%--<form:form action="/add/account/" modelAttribute="emptyAccount" enctype="multipart/form-data" method="post">--%>
                        <%--<div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">--%>
                            <%--<form:select class="js-select2" name="time" path="country">--%>
                                <%--<option>Select a country...</option>--%>
                                <%--<option>USA</option>--%>
                                <%--<option>UK</option>--%>
                                <%--<option>UA</option>--%>
                            <%--</form:select>--%>
                            <%--<div class="dropDownSelect2"></div>--%>
                        <%--</div>--%>
                        <%--<div class="bor8 bg0 m-b-12">--%>
                            <%--<form:input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" path="state" placeholder="State /  country"/>--%>
                        <%--</div>--%>
                        <%--<div class="bor8 bg0 m-b-12">--%>
                            <%--<form:input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" path="phone" placeholder="number phone"/>--%>
                        <%--</div>--%>
                        <%--<div>--%>
                                <%--&lt;%&ndash;<c:if test="${currentUser.id != avatar.user.id}">&ndash;%&gt;--%>
                            <%--<input type="file" name="avatar" class="form-control-file" formenctype="multipart/form-data" id="exampleformControlFile1">--%>
                                <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
                        <%--</div>--%>
                        <%--&lt;%&ndash;<div class="flex-w flex-r-m p-b-10">&ndash;%&gt;--%>
                        <%--<div class="dropDownSelect2"></div>--%>
                        <%--<input class="p-t-33">--%>
                        <%--<form:input type="hidden" path="id" readonly="true"/>--%>
                        <%--<input type="submit" value="Add to Cart" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">--%>
                        <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
                        <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                    <%--</form:form>--%>
                    <%--<!--  ------------------------------------------------------->--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</section>--%>



<%@include file="tmp/footer.jsp" %>
