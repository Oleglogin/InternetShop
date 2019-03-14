<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>

<div class="container">
    <header>
        <!-- Header desktop -->
        <div class="container-menu-desktop">
            <%--<div class="wrap-menu-desktop">--%>
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
                                <a href="/seller">Add product</a>
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
            <%--</div>--%>
        </div>
    </header>
</div>
<div class="container">
    <div class="col-xs-12  col-xl-9">
        <img src="${product.productImg}" alt="img01" class="img-responsive img-thumbnail "/>
        <h2>${product.title}</h2>
    </div>

    <div class="container">
        <form:form action="/purchaseAdd/${product.id}/${currentUser.id}" modelAttribute="emptyPurchase">
            <div class="form-group col-md-3">
                <form:select path="count" class="form-control input-goal">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </form:select>
                <div class="container">
                    <div class="row">
                        <div class="form-group col-md-8">
                            <input type="submit" class="btn btn-primary">
                        </div>
                    </div>
                </div>
                <form:input type="hidden" path="id" readonly="true"/>
            </div>
        </form:form>
    </div>
</div>
<%@include file="tmp/footer.jsp" %>
