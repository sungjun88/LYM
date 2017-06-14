<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Main Page</title>
<style type="text/css">
body {
	y-overflow: scroll;
	margin: 0px;
}

section {
	float: left;
}

table, td {
	border: 1px solid black;
}

td.playbar {
	width: 1890px;
	height: 90px;
	background-color: #222;
	color: white;
}

td.play {
	width: 1500px;
	height: 600px;
}

td.simillar {
	max-height: 10px;
}

td.board {
	max-height: 99px;
	height: px;
	overflow-y: scroll;
	table-layout: fixed;
}

input {
	height: 35px;
	font-size: 20px;
}

/* 최상위 메뉴*/
.topnav {
	overflow: hidden;
	background-color: #333;
}

.topnav a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}
/* ASIDE */
aside {
	float: right;
}

.search {
	width: 300px;
	max-width: 300px;
	height: 810px;
	max-height: 810px;
	overflow-y: scroll;
	overflow-x: hidden;
}

.gsc-url-top {
	font-size: 50px;
}

/* 플레이바 */
footer {
	width: 100%;
}

.playbar {
	height: 50px;
	overflow: hidden;
	background-color: #333;
	width: 100%;
	position: absolute;
	bottom: 0;
}

img {
	vertical-align: center;
	float: left;
	padding: 22px;
}
</style>
<script type="text/javascript">
	function login_go(f) {
		f.action = "/Project2/Controller?type=login";
		f.submit();
	}

	function myFunction() {
		var x = document.getElementsByTagName("META")[0].content;
		document.getElementById("demo").innerHTML = x;
	}
</script>
</head>
<body>
	<nav>
		<div class="topnav">
			<a href="/Project2/view/list.jsp">MY PAGE</a> <a
				href="/Project2/Controller?type=main">PLAY</a> <a href="#about">About</a>
			<a href="/Project2/view/start.jsp" style="float: right">LOG OUT</a>
		</div>
	</nav>
	<section></section>
	<aside>
		<table>
			<tr>
				<td><div class="search">
						<script>
							(function() {
								var cx = '007776859227468102806:_pqmhjd1fda';
								var gcse = document.createElement('script');
								gcse.type = 'text/javascript';
								gcse.async = true;
								gcse.src = 'https://cse.google.com/cse.js?cx='
										+ cx;
								var s = document.getElementsByTagName('script')[0];
								s.parentNode.insertBefore(gcse, s);
							})();
						</script>
						<gcse:search></gcse:search>
						<gcse:searchresults-only linktarget="_parent"></gcse:searchresults-only>
						<button onclick="myFunction()">Try it</button>
						<p id="demo"></p>
					</div></td>
				<td style="vertical-align: top;">
					<form method="post">
						<table class="main">
							<tr>
								<td colspan="2"><img src="#" ; alt="Add your Photo" /></td>
							</tr>
							<tr>
								<td><b>ID</b></td>
								<td><input type="text" name="id" value="${vo.id}"></td>
							</tr>
							<tr>
								<td><b>E-mail</b></td>
								<td><input type="text" name="email" value="${vo.email}"></td>
							</tr>
							<tr>
								<td><b>NAME</b></td>
								<td><input type="text" name="name" value="${vo.name}"
									placeholder="Add your name"></td>
							</tr>
							<tr>
								<td><b>GENDER</b></td>
								<td><input type="text" name="gender" value="${vo.gender}"
									placeholder="Add your gender"></td>
							</tr>
							<tr>
								<td><b>AGE</b></td>
								<td><input type="text" name="age" value="${vo.age}"
									placeholder="Add your age"></td>
							</tr>
							<tr>
								<td></td>
								<td><input type="button" name="modify" value="MODIFY"
									id="id" onclick="modify_go();"></td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	</aside>
	<footer>
		<div class="playbar"
			style="position: fixed; bottom: 0px; height: 70px; vertical-align: center">
			&nbsp; <img src="img/rewind.png";> <img src="img/play.png";>
			<img src="img/forward.png";>
		</div>
	</footer>
</body>

</html>