<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Teams</title>
</head>
<body>
  <h1>Teams</h1>

  <ul>
    <c:choose>
      <c:when test="${!empty teams}">
        <c:forEach var="team" items="${teams}">
          <li>
            <a href="<spring:url value='/teams/${team.id}' htmlEscape='true' />">
              ${team.name}
            </a>
          </li>
        </c:forEach>
      </c:when>
      <c:otherwise>
        No teams yet ! Let's create one
      </c:otherwise>
    </c:choose>
  </ul>

  <div>
    <jsp:include page="form.jsp"/>
  </div>

</body>
</html>
