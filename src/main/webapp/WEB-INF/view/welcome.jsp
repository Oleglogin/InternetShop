<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>

<h2>Hello${currentUser.username}</h2>
<c:if test="${currentUser.authority == 'ROLE_ADMIN'}">
    <a class="nav-link" href="/admin">admin</a>
</c:if>

<div class="container-fluid">
    <div class="row">
        <div class="col-xs col-xl-10">
            <div class="row">
                <c:forEach items="${productList}" var="product">
                    <div class="col-xs-12 col-sm-6 col-md-4 col-xl-2">
                        <div class="img-wrap">
                            <a href="/productData/${product.id}"><img src="${product.productImg}" alt="Card image" class="img-responsive img-thumbnail"/></a>
                                <%--<h2>${product.user.username}</h2>--%>
                            <h2>${product.title}</h2>
                            <h2>${product.discription}</h2>
                            <h2>${product.price}</h2>
                            <h2>${product.count}</h2>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>



<%@include file="tmp/footer.jsp" %>