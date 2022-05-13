<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:set var="contextPath" value="<%=request.getContextPath()%>" />   
	 
    <link rel="stylesheet"
	href="${contextPath }/resources/demo_style.css" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu</title>
</head>
<body>



<div class="menu">
<ul>
<li><a href="#"></a></li>
<li class="li2 submenu">
<div class="submenu-content">
  <a href="#">UBISTORM 1</a>
  <a href="#">UBISTORM 2</a>
  <a href="#">UBISTORM 3</a>
  </div>
</li>
<li><a href="#"></a></li>
<li><a href="#"></a></li>
</ul>
</div>

<!-- &nbsp 공백 -->

</body>
</html>