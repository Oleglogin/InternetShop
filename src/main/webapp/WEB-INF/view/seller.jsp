<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>

<h2>Hello world</h2>
<c:if test="${currentUser.authority == 'ROLE_ADMIN'}">
    <a class="nav-link" href="/admin">admin</a>
</c:if>

<ul class="navbar-nav mr-auto">

    <li class="nav-item active">
        <a class="nav-link" href="/registration">Sign up</a>
    </li>
    <li class="nav-item active">
        <a class="nav-link" href="/login">Sign in</a>
    </li>
    <li class="nav-item active">
        <a class="nav-link" href="/welcome">welcome</a>
    </li>
    <li class="nav-item active">
        <a class="nav-link" href="/logout">Exit</a>
    </li>
    <li class="nav-item active">
        <c:if test="${!empty currentUser}">
            <a href="/myProduct">${currentUser.username} Shop</a>
        </c:if>
    </li>
</ul>
<div class="container-fluid">
    <div class="row">
        <div class="col-xs col-xl-10">
            <div class="row">
                <c:forEach items="${productList}" var="product">
                    <c:if test="${currentUser.id == product.user.id}">
                        <div class="col-xs-12">
                            <div class="img-wrap">
                                <a href="/productData/${product.id}"><img src="${product.productImg}" alt="Card image" class="img-responsive img-thumbnail"/></a>
                                <h2>${product.user.username}</h2>
                                <h2>${product.title}</h2>
                                <h2>${product.discription}</h2>
                                <h2>${product.price}</h2>
                                <h2>${product.count}</h2>
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

<%@include file="tmp/footer.jsp" %>