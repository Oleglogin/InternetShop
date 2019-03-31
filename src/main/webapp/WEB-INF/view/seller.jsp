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

<section class="sec-product-detail bg0 p-t-65 p-b-60">
    <div class="container">
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
                                    <span>
                                        <a href="productEdit/${currentUser.id}">edit</a>
                                    </span>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>

                </div>
            </div>

            <div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto ">
                <div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">




                    <h4 class="mtext-109 cl2 ">Add Product</h4>

                    <div class="flex-w flex-t bor12">



                        <div class="size-209">
                            <div class="">
                                <c:url value="/product/add" var="addProduct"/>
                                <form:form action="${addProduct}" modelAttribute="emptyProduct" enctype="multipart/form-data">
                                    <div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
                                        <form:select class="js-select2" name="time" path="category">
                                            <option>notebook</option>
                                            <option>computer</option>
                                            <option>smartPhone</option>
                                            <option>tv</option>
                                            <option>audio</option>
                                        </form:select>
                                        <div class="dropDownSelect2"></div>
                                    </div>

                                    <div class="bor8 bg0 m-b-12">
                                        <form:input  path="title" class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="state" placeholder="Name"/>
                                    </div>

                                    <div class="bor8 bg0 m-b-22">
                                        <form:input path="description" class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="postcode" placeholder="description"/>
                                    </div>

                                    <div class="bor8 bg0 m-b-22">
                                        <form:input path="price" class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="postcode" placeholder="price"/>
                                    </div>

                                    <div class="bor8 bg0 m-b-22">
                                        <form:input path="count" class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="postcode" placeholder="count"/>
                                    </div>

                                    <div class="form-group col-md-6">
                                        <input type="file" name="productImg" class="form-control-file" formenctype="multipart/form-data" id="exampleformControlFile1">
                                    </div>
                                    <form:input type="hidden" path="id" readonly="true"/>

                                    <input type="submit" value="add product" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
                                </form:form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>




<div class="container">
    <div class="container-fluid">
        <div class="row">

        </div>
    </div>

</div>




































<%@include file="tmp/footer.jsp" %>