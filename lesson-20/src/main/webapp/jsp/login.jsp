<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>
    <link href="<c:url value="css/app.css" />" rel="stylesheet" type="text/css">
</head>

<body class="security-app">
    <form name='f' action="<c:url value='/j_spring_security_check' />" method='POST'>
        <div class="lc-block">
            <div>
            	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </div>
            <div>
                <input type="text" class="style-4" name="j_username" placeholder="Имя пользователя" />
            </div>
            <div>
                <input type="password" class="style-4" name="j_password" placeholder="Пароль" />
            </div>
            <div>
                <input type="submit" value="Войти" class="button red small" />
            </div>
            <c:if test="${param.error ne null}">
                <div class="alert-danger">Неправильные имя пользователя или пароль!</div>
            </c:if>
            <c:if test="${param.logout ne null}">
                <div class="alert-normal">Вы вышли из системы...</div>
            </c:if>
        </div>        
    </form>
</body>

</html>