<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>
    <link href="<spring:url value=" css/app.css" />" rel="stylesheet" type="text/css">
    <title>Spring Security</title>
</head>

<body class="security-app">
    <div class="lc-block">
        <h1>Добро пожаловать!</h1>
        <div class="alert-normal">
            Нажми <a href="<spring:url value='/hello' />">сюда</a>, чтобы увидеть приветствие...
        </div>
    </div>
</body>

</html>