<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(function() {
	$(".asd").click(function() {
		var url = $(this).find("#long").text();
		alert(url);
	});
});
</script>
</head>
<body>
<div class="asd" style="cursor: pointer;">
<div id="short">
</div>
<div id="long">
https://www.youtube.com/watch?v=hcMSrKi8hZA
</div>
</div>
</body>
</html>