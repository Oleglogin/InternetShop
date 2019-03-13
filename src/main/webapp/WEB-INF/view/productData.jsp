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
        <li class="nav-item active">
            <a href="/seller">Add product</a>
        </li>
    </ul>

    <div class="container-fluid">
        <div class="row">
            <div class="col-xs col-xl-10">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4 col-xl-2">
                        <div class="img-wrap">
                            <h2>${product.title}</h2>
                            <div class="col-xs-12  col-xl-9">
                                <img src="${product.productImg}" alt="img01" class="img-responsive img-thumbnail "/>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-xl-2">
                            <div class="img-wrap">
                                <%--<c:url value="/purchase/add" var="addPurchase"/>--%>
                                <form:form action="/purchaseAdd/${product.id}/${currentUser.id}" modelAttribute="emptyPurchase">
                                <div class="form-group col-md-3">
                                    <form:select path="count" class="form-control input-goal">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </form:select>
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
    </div>


</div>




<%@include file="tmp/footer.jsp" %>
