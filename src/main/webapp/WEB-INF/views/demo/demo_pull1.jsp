<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:set var="contextPath" value="<%=request.getContextPath()%>" />   
	 
    <link rel="stylesheet"
	href="${contextPath }/resources/demo_style.css" />


<script type="text/javascript">

var check = 0;

function drag(ev){
	ev.dataTransfer.setData("text", ev.target.id);
	
}

function dragOver(ev) {
	  ev.preventDefault();
	  ev.dataTransfer.effectAllowed = "copy";
	}
	
	function drop1(ev) {
		  ev.preventDefault(); 
		  var data = ev.dataTransfer.getData("text");
		  ev.target.appendChild(document.getElementById(data));
		 
	//	  document.getElementById('img1-1').style.display = "revert";

	//	  document.getElementById('img1-1').style.display = "revert";

			
		}
		
	function drop2(ev) {
		  ev.preventDefault(); 
		  var data = ev.dataTransfer.getData("text");
		  ev.target.appendChild(document.getElementById(data));
		  document.getElementById('img1-1').style.display = "none";
		  
		}


</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pull</title>
</head>
<body>


<div class="area1" ondrop="drop1(event)" ondragover="dragOver(event)">
<div class="area1-1"></div>
<div class="area1-2" id="img1" draggable="true" ondragstart="drag(event)" >UBISTORM IMG 1</div>
<div class="area1-2" id="img2" draggable="true" ondragstart="drag(event)" >UBISTORM IMG 2</div>
<div class="area1-2" id="img3" draggable="true" ondragstart="drag(event)" >UBISTORM IMG 3</div>
</div>

<div class="area2" id="drop" ondrop="drop1(event)" ondragover="dragOver(event)">
<div class="area2-1"></div>
<div class="area2-2" id="img1-1" draggable="true" ondragstart="drag(event)" style="display: none;">UBISTORM IMG 1</div>
<div class="area2-2" id="img1-2" draggable="true" ondragstart="drag(event)" style="display: none;">UBISTORM IMG 2</div>
<div class="area2-2" id="img1-3" draggable="true" ondragstart="drag(event)" style="display: none;"></div>
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