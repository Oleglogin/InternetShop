<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>

<h2>Hello world</h2>


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

    </li>
</ul>

<%@include file="tmp/footer.jsp" %>