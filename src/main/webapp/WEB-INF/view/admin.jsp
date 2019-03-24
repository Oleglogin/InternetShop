<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>
<header>
    <nav class="limiter-menu-desktop container">

        <!-- Logo desktop -->
        <a href="#" class="logo">
            <img src="../../resources/images/icons/logo-02.png" alt="IMG-LOGO">
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
            <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                <i class="zmdi zmdi-search"></i>
            </div>
        </div>
    </nav>
</header>



<section class="sec-product-detail bg0 p-t-65 p-b-60">
    <div class="container">
        <div class="row">

            <div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
                <div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">

                    <h4 class="mtext-109 cl2 p-b-30">Add Product</h4>

                    <div class="flex-w flex-t bor12 p-t-15 p-b-30">

                        <div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
                            <div class="p-t-15">
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




            <div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
                <div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">

                    <h4 class="mtext-109 cl2 p-b-30">Add Preview</h4>

                    <div class="flex-w flex-t bor12 p-t-15 p-b-30">

                        <div class="p-t-15">
                            <c:url value="/mainImg/add" var="addMainImg"/>
                            <form:form action="${addMainImg}" modelAttribute="emptyMainImg" enctype="multipart/form-data">
                                <div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
                                    <form:select class="js-select2" name="time" path="imgCategory">
                                        <option>mainPreview</option>
                                        <option>preview</option>
                                    </form:select>
                                    <div class="dropDownSelect2"></div>
                                </div>

                                <div class="bor8 bg0 m-b-12">
                                    <form:input  path="name" class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="state" placeholder="Name"/>
                                </div>



                                <div class="form-group col-md-6">
                                    <input type="file" name="pictures" class="form-control-file" formenctype="multipart/form-data">
                                </div>

                                <input type="submit" value="add preview" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
                            </form:form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section>
    <div class="container">
        <div class="row">

            <div class="col-lg-8">
                <h4 class="cl2 p-b-30">List Product</h4>
                <div class="flex-w flex-t  p-b-13">
                    <div class="size-208">
                        <span class="stext-110 cl2">Total:</span>
                    </div>
                    <div class="size-209">
                        <span class="mtext-110 cl2">${countProduct}</span>
                    </div>
                </div>
                <div>
                    <div class="wrap-table-shopping-cart">
                        <table class="table-shopping-cart">
                            <tr class="table_head">
                                <td class="column-1">Product</td>
                                <td class="column-2">Price</td>
                                <td class="column-3">Edit</td>
                                <td class="column-4">Delete</td>
                                <td class="column-5">Seller</td>
                            </tr>
                            <c:forEach items="${productList}" var="product">
                                <c:if test="${currentUser.id == product.user.id}">
                                    <tr class="table_row">
                                        <td class="column-1">
                                            <div class="how-itemcart1">
                                                <img src="${product.productImg}" alt="IMG">
                                            </div>
                                        </td>
                                        <td class="column-2">${product.price}</td>
                                        <td class="column-3"><a href="<c:url value='/productRemove/${product.id}'/> ">Edit</a></td>
                                        <td class="column-4"><a href="<c:url value='/productRemove/${product.id}'/> ">Delete</a></td>
                                        <td class="column-5">${product.user.username}</td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                            <c:forEach items="${productList}" var="product">
                                <c:if test="${currentUser.id != product.user.id}">
                                    <tr class="table_row">
                                        <td class="column-1">
                                            <div class="how-itemcart1">
                                                <img src="${product.productImg}" alt="IMG">
                                            </div>
                                        </td>
                                        <td class="column-2">${product.price}</td>
                                        <td class="column-3"><a href="<c:url value='/productRemove/${product.id}'/> ">Edit</a></td>
                                        <td class="column-4"><a href="<c:url value='/productRemove/${product.id}'/> ">Delete</a></td>
                                        <td class="column-5">${product.count}</td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>



            <div class="col-lg-4">
                <h4 class="cl2 p-b-30">List User</h4>
                <div class="flex-w flex-t p-b-13">
                    <div class="size-208">
                        <span class="stext-110 cl2">Total:</span>
                    </div>
                    <div class="size-209">
                        <span class="mtext-110 cl2">$ ${countUser}</span>
                    </div>
                </div>

                        <div class="wrap-table-shopping-cart">
                            <table class="table-shopping-cart">
                                <tr class="table_head">
                                    <td class="column-1">Login</td>
                                    <td class="column-2">Avatar</td>

                                </tr>
                                <c:forEach items="${userList}" var="user">
                                    <tr class="table_row">
                                        <td class="column-1"><a href="userData/${user.id}">${user.username}</a></td>
                                        <td class="column-2">
                                            <div class="how-itemcart1">
                                                <img src="${user.account.avatar}" alt="IMG">
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
            </div>
        </div>
    </div>
</section>
<%--<section class="sec-product-detail bg0 p-t-65 p-b-60">--%>
    <%--<div class="container">--%>
        <%--<div class="row">--%>
            <%--<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">--%>
                <%--<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">--%>
                    <%--<h4 class="mtext-109 cl2 p-b-30">Add Preview</h4>--%>
                    <%--<div class="flex-w flex-t bor12 p-t-15 p-b-30">--%>
                        <%--<div class="p-t-15">--%>
                            <%--<form:form action="changeLocked/${user.id}" modelAttribute="emptyUser" enctype="multipart/form-data">--%>

                                <%--<div class="bor8 bg0 m-b-12">--%>
                                    <%--<form:input  path="username" class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="state" placeholder="Name"/>--%>
                                <%--</div>--%>
                                <%--<div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">--%>
                                    <%--<form:select class="js-select2" name="time" path="accountNonLocked">--%>
                                        <%--<option>true</option>--%>
                                        <%--<option>false</option>--%>
                                    <%--</form:select>--%>
                                    <%--<div class="dropDownSelect2"></div>--%>
                                <%--</div>--%>

                                <%--<input type="submit" value="add preview" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">--%>
                            <%--</form:form>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</section>--%>



<!-- Footer -->
<footer class="bg3 p-t-75 p-b-32">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-lg-3 p-b-50">
                <h4 class="stext-301 cl0 p-b-30">
                    Categories
                </h4>

                <ul>
                    <li class="p-b-10">
                        <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                            Women
                        </a>
                    </li>

                    <li class="p-b-10">
                        <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                            Men
                        </a>
                    </li>

                    <li class="p-b-10">
                        <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                            Shoes
                        </a>
                    </li>

                    <li class="p-b-10">
                        <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                            Watches
                        </a>
                    </li>
                </ul>
            </div>

            <div class="col-sm-6 col-lg-3 p-b-50">
                <h4 class="stext-301 cl0 p-b-30">
                    Help
                </h4>

                <ul>
                    <li class="p-b-10">
                        <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                            Track Order
                        </a>
                    </li>

                    <li class="p-b-10">
                        <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                            Returns
                        </a>
                    </li>

                    <li class="p-b-10">
                        <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                            Shipping
                        </a>
                    </li>

                    <li class="p-b-10">
                        <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                            FAQs
                        </a>
                    </li>
                </ul>
            </div>

            <div class="col-sm-6 col-lg-3 p-b-50">
                <h4 class="stext-301 cl0 p-b-30">
                    GET IN TOUCH
                </h4>

                <p class="stext-107 cl7 size-201">
                    Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879
                </p>

                <div class="p-t-27">
                    <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                        <i class="fa fa-facebook"></i>
                    </a>

                    <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                        <i class="fa fa-instagram"></i>
                    </a>

                    <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                        <i class="fa fa-pinterest-p"></i>
                    </a>
                </div>
            </div>

            <div class="col-sm-6 col-lg-3 p-b-50">
                <h4 class="stext-301 cl0 p-b-30">
                    Newsletter
                </h4>

                <form>
                    <div class="wrap-input1 w-full p-b-4">
                        <input class="input1 bg-none plh1 stext-107 cl7" type="text" name="email" placeholder="email@example.com">
                        <div class="focus-input1 trans-04"></div>
                    </div>

                    <div class="p-t-18">
                        <button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
                            Subscribe
                        </button>
                    </div>
                </form>
            </div>
        </div>

        <div class="p-t-40">
            <div class="flex-c-m flex-w p-b-18">
                <a href="#" class="m-all-1">
                    <img src="../../resources/images/icons/icon-pay-01.png" alt="ICON-PAY">
                </a>

                <a href="#" class="m-all-1">
                    <img src="../../resources/images/icons/icon-pay-02.png" alt="ICON-PAY">
                </a>

                <a href="#" class="m-all-1">
                    <img src="../../resources/images/icons/icon-pay-03.png" alt="ICON-PAY">
                </a>

                <a href="#" class="m-all-1">
                    <img src="../../resources/images/icons/icon-pay-04.png" alt="ICON-PAY">
                </a>

                <a href="#" class="m-all-1">
                    <img src="../../resources/images/icons/icon-pay-05.png" alt="ICON-PAY">
                </a>
            </div>

            <p class="stext-107 cl6 txt-center">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

            </p>
        </div>
    </div>
</footer>

<%@include file="tmp/footer.jsp" %>