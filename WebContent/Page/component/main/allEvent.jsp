<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="php"%>
<div class="d-flex justify-content-around mt-5 mb-5 row">
	<php:forEach items="${events}" var="event">
		<a href="event?id=${event.getId() }" class="text-center text-danger col-md-1">
			<img src="${event.getIcon() }" style="width: 100px; height: 100px" alt="">
			<p class="text-danger text-center" style="">${event.getName() }</p>
		</a>
	</php:forEach>
</div>