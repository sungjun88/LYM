<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Insert title here</title>
<link href='//fonts.googleapis.com/css?family=Annie Use Your Telescope' rel='stylesheet'>
<style>
fieldset {
	width: 40%;
	border: solid 5px black;
	margin: 50px;
	font-size: 25px;
	font-weight: bold;
}

img {
	width: 28%;
}

body {
	font-style: Calibri;
}

input {
	width: 300px;
	height: 35px;
	background-color: black;
	font-size: 40px;
	font-weight: bold;
	color: white;
	margin: 5px;
}

legend {
	font-size: 50px;
	font-weight: bold;
}

td {
	vertical-align: top;
}



</style>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
 <script type="text/javascript">
 $(function() {
	$("#id").keyup(function() {
		if($("#id").val() == ""){
			$("span").html("");
		}else{
			$.ajax({
				url : "/Project2/IdchkController",
				type : "get",
				data : "id=" + $("#id").val(),
				datatype : "text",
				success : function(data) {
					$("span").html(data);
				},
				error : function() {
					
				},
			});
		}
	});
	
});

function login_go(f) {
		f.action = "/Project2/Controller?type=login";
		f.submit();
}

function join_go(f){
	if($("#pwd").val() == ""){
		alert("Put your PASSWORD")
	}else if($("#email").val() == ""){
		alert("Put your E-MAIL")
	}else {
	f.action="/Project2/Controller?type=join";
	f.submit();
	}
}

</script> 
</head>
<body>
	<form method="post"> <!-- method="post" -->
		<table width="100%">
			<tr>
				<td align="center" colspan="2"><img src="img/Icon.jpg"></td>
			</tr>
			<tr>
				<td align="center">
					<fieldset>
						<table id="table2" align = "center">
							<tr>
								<td align = "center"><b  style="font-size: 100px">L Y M<b></td>
							</tr>
							<tr>
								<td align = "center">List Your Music</br></br></td>
							</tr>

							<tr>
								<td><input type="text"  name="id"   placeholder="ID"  id="id"/></td>
							</tr>
							<tr>
								<td><input type="password"  name="pwd"  placeholder="PW" id="pwd"/></td>
							</tr>
							<tr>
							<td><span id="chk"></span>
							</td>
							
							</tr>
						</table>
				</fieldset>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
