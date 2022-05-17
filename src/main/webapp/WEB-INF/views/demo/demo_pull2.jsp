<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:set var="contextPath" value="<%=request.getContextPath()%>" />   
	 
    <link rel="stylesheet"
	href="${contextPath }/resources/demo_style.css" />


<script type="text/javascript">

function onDragStart(event) { // 드래그
	  event.dataTransfer.setData('text', event.target.id);
	}

	
function onDrop(event) { // 드래그 후
	event.preventDefault();
	
	  var data = event
	    .dataTransfer
	    .getData('text');

	 var nodeCopy = document.getElementById(data).cloneNode(true);
	 nodeCopy.id = data+1;
	 
 	if(
 	document.getElementById('img11') || !document.getElementById('img21') || !document.getElementById('img31') &&
 	document.getElementById('img11') || document.getElementById('img21') || !document.getElementById('img31') &&
 	document.getElementById('img11') || document.getElementById('img21') || document.getElementById('img31')
 	) {
		 event.target.appendChild(nodeCopy);
 		 document.getElementById(data+1).style.width = "100px";
 		 document.getElementById(data+1).style.height = "130px";
	}else{
		console.log(1);
	}
 	
 	
}
	
	/*  event.target.appendChild(nodeCopy);
	 document.getElementById(data+1).style.width = "100px";
	 document.getElementById(data+1).style.height = "130px";
	 */
	
function onDrop2(event) {
		if(document.getElementById(img1))
	event.preventDefault();
	 var data = event
	    .dataTransfer
	    .getData('text');
	  
	  var draggableElement = document.getElementById(data);
	  
	  var dropzone = event.target;
	  
	  dropzone.appendChild(draggableElement);
	  
	  draggableElement.remove();
 	
	}
	
function onDragOver(event) { // 위치
		event.preventDefault();
	}

</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pull2</title>
</head>
<body>


<div class="area1" ondrop="onDrop2(event)" ondragover="onDragOver(event)" >
<div class="area1-1"></div>
<div class="area1-2" id="img1" draggable="true" ondragstart="onDragStart(event)">UBISTORM IMG 1</div>
<div class="area1-2" id="img2" draggable="true" ondragstart="onDragStart(event)">UBISTORM IMG 2</div>
<div class="area1-2" id="img3" draggable="true" ondragstart="onDragStart(event)">UBISTORM IMG 3</div>
</div>

<div class="area2" ondrop="onDrop(event)" ondragover="onDragOver(event)" >
<div class="area2-1"></div>
<div class="area2-2" id="img1-1" style="display: none;">UBISTORM IMG 1</div>
<div class="area2-2" id="img1-2" style="display: none;">UBISTORM IMG 2</div>
<div class="area2-2" id="img1-3" style="display: none;"></div>
</div>

<div class="area3">
<div style="margin-top: 50px;">
UBISTORMUBISTORMUBISTORMUBISTORMUBISTORMUBISTORMUBISTORMUBISTORM
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