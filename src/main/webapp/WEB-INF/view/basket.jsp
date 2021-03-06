<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="tmp/header.jsp" %>
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
            </div>
            <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
                <i class="zmdi zmdi-favorite-outline"></i>
            </a>
        </div>
    </nav>
</header>



<!-- breadcrumb -->
<div class="container">
    <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
        <a href="/welcome" class="stext-109 cl8 hov-cl1 trans-04">
            Home
            <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
        </a>

        <span class="stext-109 cl4">Shoping Cart</span>
    </div>
</div>


<!-- Shoping Cart -->
    <div class="container">
        <div class="row">

            <div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
                <div class="m-l-25 m-r--38 m-lr-0-xl">
                    <div class="wrap-table-shopping-cart">
                        <table class="table-shopping-cart">
                            <tr class="table_head">
                                <th class="column-1">Product</th>
                                <th class="column-2">Price</th>
                                <th class="column-3">Quantity</th>
                                <th class="column-4">Total</th>
                                <th class="column-5">Delete</th>
                            </tr>
                            <c:forEach items="${purchaseListInBasket}" var="purchase">
                                    <tr class="table_row">
                                        <td class="column-1">
                                            <div class="how-itemcart1">
                                                <img src="${purchase.product.productImg}" alt="IMG">
                                            </div>
                                        </td>
                                        <%--<td class="column-2">${purchase.product.title}</td>--%>
                                        <td class="column-2">$ ${purchase.product.price}</td>
                                        <td class="column-3">${purchase.count}</td>
                                        <td class="column-4">$ ${purchase.amount} </td>
                                        <td class="column-5"><a href="<c:url value='/removeProductFromPurchase/${purchase.id}'/> ">Delete</a></td>
                                    </tr>
                            </c:forEach>

                        </table>
                    </div>

                    <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
                        <div class="flex-w flex-m m-r-20 m-tb-5">
                            <input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder="Coupon Code">

                            <div class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
                                Apply coupon
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
                <div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
                    <%--<form:form action="/saveOrder" modelAttribute="emptyOrders" >--%>

                    <%--</form:form>--%>
                    <h4 class="mtext-109 cl2 p-b-30">Cart Totals</h4>

                    <div class="flex-w flex-t bor12 p-b-13">
                        <div class="size-208">
                            <span class="stext-110 cl2">Subtotal:</span>
                        </div>
                        <div class="size-209">
                            <span class="mtext-110 cl2">$ ${amountPrice}</span>
                        </div>
                    </div>

                    <div class="flex-w flex-t bor12 p-t-15 p-b-30">
                        <div class="size-208 w-full-ssm">
								<span class="stext-110 cl2">Shipping:</span>
                        </div>
                        <div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
                            <p class="stext-111 cl6 p-t-2">There are no shipping methods available. Please double check your address, or contact us if you need any help.</p>
                            <div class="p-t-15">
									<span class="stext-112 cl8">Calculate Shipping</span>



                            </div>
                        </div>
                    </div>

                    <div class="flex-w flex-t p-t-27 p-b-33">
                        <div class="size-208">
								<span class="mtext-101 cl2">
									Total:
								</span>
                        </div>

                        <div class="size-209 p-t-1">
								<span class="mtext-110 cl2">
									$ ${amountPrice}
								</span>
                        <form:form action="fillOrder/${currentUser.id}" method="post" modelAttribute="emptyOrders">
                            <div class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
                                <input type="submit" value="Ok">
                            </div>
                        </form:form>
                </div>
            </div>
        </div>
    </div>
<%@include file="tmp/footer.jsp" %>