<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>Chat Room</title>
	</head>

	<script type="text/javascript" src="common.js"></script>

	<style>
		#msgContainerObjId {
			border : 1xp solid green;
		}
	</style>
	<body>
	<input id="msgInputBoxObjId"/>
	<div id="msgContainerObjId">
	</div>

	
	</body>
	<script>
var websocket = null;
if('WebSocket' in window){
	websocket = new WebSocket("ws://localhost:8080<%=path%>/websocket");
} else if('MozWebSocket' in window){
	websocket = new MozWebSocket('ws://localhost:8080<%=path%>/websocket');
} else{
	alert('Not support websocket')
}

websocket.onerror = function(){
	d("error");
	alert("your browser do not support web socket.");
};

websocket.onopen = function(event){
	d("openned web socket");
	$("#msgInputBoxObjId").keyup(function(event){
		if (event.keyCode == 13) {
			websocket.send(this.value);
			this.value= "";
		}
	});
}
				
websocket.onmessage = function(){
	d(event.data);
	$("#msgContainerObjId").append("<div>"+event.data+"</div>")
}
				
websocket.onclose = function(){
	d("close");
}
				
window.onbeforeunload = function(){
	websocket.close();
}
	</script>
</html>
