<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>

<h2>Hello ${currentUser.username}</h2>

<div class="container">
    <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
            <a class="nav-link" href="/welcome">Main page</a>
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
                    <c:forEach items="${userList}" var="user">
                        <div class="container">
                            <%--<div class="img-wrap">--%>
                                <%--<h2>${user.id}</h2>--%>
                                <h2><a href="userData/${user.id}">${user.username}</a></h2>
                                <br/>
                            <%--</div>--%>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xs-12 col-sm-6 col-md-4 col-xl-3">
        <c:url value="/mainImg/add" var="addMainImg"/>
        <form:form action="${addMainImg}" modelAttribute="emptyMainImg" enctype="multipart/form-data">
            <div class="container-fluid">
                <div class="row">
                    <form:input path="name" id="name" placeholder="name"/>
                </div>
                <div class="form-group col-md-3">
                    <form:select path="category" class="form-control input-goal">
                        <option>notebook</option>
                        <option>computer</option>
                        <option>smartPhone</option>
                        <option>tv</option>
                        <option>audio</option>
                    </form:select>
                </div>
            </div>
            <div class="form-group col-md-6">
                <input type="file" name="pictures" class="form-control-file" formenctype="multipart/form-data" id="exampleformControlFile1">
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




<%@include file="tmp/footer.jsp" %>