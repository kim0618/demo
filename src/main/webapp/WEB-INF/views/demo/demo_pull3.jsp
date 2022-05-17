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
	var data = event.dataTransfer.getData("text");
	console.log("drop1 : " + data);
 	disblock(data);
}
function onDrop2(event) {
	event.preventDefault();
	var data = event.dataTransfer.getData("text");
	console.log("drop2 : " + data);
	disnone(data);
	console.log("drop2-2 : " + data);
	}


function disblock(data){
	console.log("block : " + data);
	var data1 = data + "-" + 1
//	document.getElementById(data1).style.display = "revert";
	if(data == "img1"){
	console.log("img1 : " + data);
	document.getElementById(data1).style.display = "block";
	console.log("data1 : " + data1);
	}else if(data == "img2"){
	console.log("img2 : " + data);
	document.getElementById(data1).style.display = "block";
	console.log("data1 : " + data1);
	}else if(data == "img3"){
	console.log("img3 : " + data);
	document.getElementById(data1).style.display = "block";
	console.log("data1 : " + data1);
	}else{
		console.log(123);
		return;
	}
}
function disnone(data){
	console.log("none : " + data);
//	document.getElementById(data1).style.display = "revert";
	if(data == "img1-1"){
		console.log("img1 : " + data);
		document.getElementById(data).style.display = "none";
		}else if(data == "img2-1"){
		console.log("img2 : " + data);
		document.getElementById(data).style.display = "none";
		}else if(data == "img3-1"){
		console.log("img3 : " + data);
		document.getElementById(data).style.display = "none";
		}else{
			console.log(456);
			return;
		}
}


function onDragOver(event) { // 위치
		event.preventDefault();
	}

</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pull3</title>
</head>
<body>


<div class="area1" ondrop="onDrop2(event)" ondragover="onDragOver(event)">
<div class="area1-1"></div>
<div class="area1-2" id="img1" draggable="true" ondragstart="onDragStart(event)" value="1">UBISTORM IMG 1</div>
<div class="area1-2" id="img2" draggable="true" ondragstart="onDragStart(event)" value="2">UBISTORM IMG 2</div>
<div class="area1-2" id="img3" draggable="true" ondragstart="onDragStart(event)" value="3">UBISTORM IMG 3</div>
</div>

<div class="area2" ondrop="onDrop(event)" ondragover="onDragOver(event)">
<div class="area2-1"></div>
<div class="area2-2" id="img1-1" style="display: none;" draggable="true" ondragstart="onDragStart(event)">UBISTORM IMG 1</div>
<div class="area2-2" id="img2-1" style="display: none;" draggable="true" ondragstart="onDragStart(event)">UBISTORM IMG 2</div>
<div class="area2-2" id="img3-1" style="display: none;" draggable="true" ondragstart="onDragStart(event)">UBISTORM IMG 3</div>
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