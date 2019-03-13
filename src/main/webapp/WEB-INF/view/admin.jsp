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


</div>




<%@include file="tmp/footer.jsp" %>