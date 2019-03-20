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
            <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                <i class="zmdi zmdi-search"></i>
            </div><a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
            <i class="zmdi zmdi-favorite-outline"></i>
        </a>
        </div>
    </nav>
</header>

<div class="container">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs col-xl-10">
                <div class="row">
                    <c:forEach items="${productList}" var="product">
                        <c:if test="${currentUser.id == product.user.id}">
                            <div class="col-xs-12 col-sm-6 col-md-4 col-xl-2">
                                <div class="img-wrap">
                                    <a href="/productData/${product.id}"><img src="${product.productImg}" alt="Card image" class="img-responsive img-thumbnail"/></a>
                                    <span>${product.user.username}</span>
                                    <span>${product.title}</span>
                                    <span>${product.discription}</span>
                                    <span>${product.price}</span>
                                    <span>${product.count}</span>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-xl-3">
                        <c:url value="/product/add" var="addProduct"/>
                        <form:form action="${addProduct}" modelAttribute="emptyProduct" enctype="multipart/form-data">
                            <div class="container-fluid">
                                <div class="row">
                                    <form:input path="title" id="title" placeholder="name"/>
                                </div>
                                <div class="container-fluid">
                                    <form:input path="description" id="description" placeholder="description"/>
                                </div>
                                <div class="container-fluid">
                                    <form:input path="price" id="price" placeholder="price"/>
                                </div>
                                <div class="container-fluid">
                                    <form:input path="count" id="count" placeholder="count"/>
                                </div>

                                <div class="form-group col-md-3">
                                    <form:select path="category" class="form-control input-goal">
                                        <option>notebook</option>
                                        <option>computer</option>
                                        <option>smartphone</option>
                                        <option>tv</option>
                                        <option>audio</option>
                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <input type="file" name="productImg" class="form-control-file" formenctype="multipart/form-data" id="exampleformControlFile1">
                            </div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="form-group col-md-8">
                                        <input type="submit" class="btn btn-primary">
                                    </div>
                                </div>
                            </div>
                            <form:input type="hidden" path="id" readonly="true"/>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>




































<%@include file="tmp/footer.jsp" %>