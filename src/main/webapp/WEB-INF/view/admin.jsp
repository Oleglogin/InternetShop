<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>
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
        </div>
    </nav>
</header>


<div class="container">
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
                        <option>preview</option>
                        <option>mainPreview</option>
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