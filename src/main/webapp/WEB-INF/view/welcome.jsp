<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>

<h2>Hello${currentUser.username}</h2>

<c:if test="${user.authority = 'ROLE_ADMIN'}">

</c:if>


<%@include file="tmp/footer.jsp" %>