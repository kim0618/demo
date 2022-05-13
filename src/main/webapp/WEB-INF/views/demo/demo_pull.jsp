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
<title>pull</title>
</head>
<body>



<div class="main">
<jsp:include page="demo_menu.jsp" />

<div class="area1">
<div class="area1-1"></div>
<div class="area1-2"></div>
</div>

<div class="area2">
<div class="area2-1"></div>
<div class="area2-2"></div>
</div>

<div class="area3">
<div style="margin-top: 50px;">
UBISTORM UBISTORM UBISTORM UBISTORM UBISTORM UBISTORM UBISTORM UBISTORM
</div>
</div>

<div class="area4">
<div>
<div class="area4-1"></div>
<div class="area4-2"></div>
<div class="area4-3"></div>
<div class="area4-4"></div>
</div>
<div>
<div class="area4-5"></div>
<div class="area4-6"></div>
</div>
</div>
</div>



</body>
</html>