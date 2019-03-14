<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>

<h2>Hello ${currentUser.username}</h2>

<div class="container">
    <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
            <a class="nav-link" href="/Main page">Main page</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="/logout">Exit</a>
        </li>
    </ul>

    <div class="container-fluid">
        <div class="row">
            <div class="col-xs col-xl-10">
                <h2>${user.username}</h2>
                <br/>
                <c:forEach items="${purchaseList}" var="purchase">
                    <c:if test="${user.username == purchase.user.username}">
                        <span>${purchase.product.title}</span>
                        <br/>
                        <span>${purchase.count}</span>
                        <br/>
                    </c:if>

                </c:forEach>
                </div>
            </div>
        </div>


    </div>




<%@include file="tmp/footer.jsp" %>