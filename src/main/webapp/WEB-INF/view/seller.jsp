<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>




<h2>Hello ${currentUser.username}</h2>



<div class="container">
    <ul class="menu">

        <li><a href="/welcome">Main Page</a></li>
        <li><a href="/logout">Exit</a></li>
        <li>
            <c:if test="${currentUser.authority == 'ROLE_SELLER'}">
                <a class="nav-link" href="/seller">seller</a>
            </c:if>
        </li>
        <li>
            <c:if test="${currentUser.authority == 'ROLE_ADMIN'}">
                <a class="nav-link" href="/admin">Admin Page</a>
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
                                        <option>smartfon</option>
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