<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>

<h2>Hello ${currentUser.username}</h2>



<div class="container">
    <ul class="menu">
        <li><a href="/registration">Sign up</a></li>
        <li><a href="/login">Sign in</a></li>
        <li><a href="/logout">Exit</a></li>
        <li>
            <c:if test="${currentUser.authority == 'ROLE_SELLER'}">
                <a class="nav-link" href="/seller">seller</a>
            </c:if>
        </li>
        <li>
            <c:if test="${currentUser.authority == 'ROLE_ADMIN'}">
                <a class="nav-link" href="/admin">admin</a>
            </c:if>
        </li>
    </ul>
    <br>
    <br>

    <div class="container-fluid">
        <div class="row">
            <div class="col-xs col-xl-10">
                <div class="row">
                    <c:forEach items="${productList}" var="product">
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
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>

</div>




<%@include file="tmp/footer.jsp" %>