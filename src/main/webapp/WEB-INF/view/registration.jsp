<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>

<div class="container-fluid col-md-3">
    <div class="row">
        <form:form action="saveUserSpringForm" method="post" modelAttribute="emptyUser">
            <div class="container">
                <div class="field">
                    <form:input path="email" type="email" placeholder="Enter Email"/>
                </div>
                <div class="field">
                    <form:input path="username" type="text" placeholder="Enter login"/>
                </div>
                <div class="field">
                    <form:input path="password" type="password" placeholder="Enter password"/>
                </div>
                <div class="field">
                    <form:input path="confirmPassword" type="password" placeholder="confirm your password"/>
                </div>
            </div>
            <br>
            <input type="submit" class="btn btn-primary">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" >
        </form:form>
    </div>
</div>


<%@include file="tmp/footer.jsp" %>