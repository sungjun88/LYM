<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

table.main {
	width: 1250px;
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
	width: 300px;
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

.li1 {
	background-color: #ddd;
	height: 40px;
}

.li2 {
	background-color: #333;
	height: 40px;
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

#myProgress {
	margin: 0 auto;
	width: 50%;
	background-color: #111;
}

#myBar {
	width: 30%;
	height: 30px;
	background-color: #fff;
}

img {
	vertical-align: center;
	float: left;
	padding: 22px;
}

.play_btn {
	
}

.pause_btn {
	
}

.gsc-url-top {
	cursor: pointer;
}
</style>
<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	//유튜브 api
	// 2. This code loads the IFrame Player API code asynchronously.
	var tag = document.createElement('script');

	tag.src = "https://www.youtube.com/iframe_api";
	var firstScriptTag = document.getElementsByTagName('script')[0];
	firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

	// 3. This function creates an <iframe> (and YouTube player)
	//    after the API code downloads.
	var player;
	function onYouTubeIframeAPIReady() {
		player = new YT.Player('player', {
			height : '100%',
			width : '100%',
			videoId : 'X66fLliWRgg',
			events : {
				'onReady' : onPlayerReady,
				'onStateChange' : onPlayerStateChange
			}
		});
	}

	// 4. The API will call this function when the video player is ready.
	function onPlayerReady(event) {
		event.target.playVideo();
	}

	// 5. The API calls this function when the player's state changes.
	//    The function indicates that when playing a video (state=1),
	//    the player should play for six seconds and then stop.
	var done = false;
	function onPlayerStateChange(event) {
		if (event.data == YT.PlayerState.PLAYING && !done) {
			done = true;
		} else {
			done = false;
		}
	}
	function stopVideo() {
		player.stopVideo();
	}

	function playVideo() {
		if (done == true) {
			document.getElementById('pause_btn').src = "img/play.png"
			player.pauseVideo();
		} else if (done == false) {
			document.getElementById('pause_btn').src = "img/pause.png"
			player.playVideo();
		}

	}

	function nextVideo() {
		player.nextVideo();
		alert("AAA");
	}

	function previousVideo() {
		player.previousVideo();
		alert("BBB");
	}

	function setVolume() {
		player.setVolume();
	}
</script>
</head>
<body>
	<nav>
		<div class="topnav">
			<a href="/Project2/view/list.jsp">MY PAGE</a> <a
				href="/Project2/view/main.jsp">PLAY</a> <a href="#about">About</a> <a
				href="/Project2/view/start.jsp" style="float: right">LOG OUT</a>
		</div>
	</nav>
	<section>
		<table class="main">
			<tr>
				<td class="play">
					<!-- 1. The <iframe> (and video player) will replace this <div> tag. -->
					<div id="player"></div>
				</td>

			</tr>
			<tr>
				<td class="simillar" style="border: solid 2px black">
					<p>The Very Simillar Song</p>
					<p>1976 People vote</p>
				</td>
			</tr>
			<tr>
				<td class="board" style="border: solid 2px black">
					<div style="height: 99px;">
						<pre
							style="word-wrap: break-word; white-space: pre-wrap; white-space: -moz-pre-wrap; white-space: -pre-wrap; white-space: -o-pre-wrap; word-break: break-all;">

			</pre>
					</div>
				</td>
			</tr>
		</table>
	</section>
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
					</div></td>
				<td style="vertical-align: top"><input width=20px type="button"
					value="My Page"
					style="background-color: white; vertical-align: center; color: black;">
					<div class="li1">-----------</div>
					<div class="li2">-----------</div>
					<div class="li1">-----------</div>
					<div class="li2">-----------</div>
					<div class="li1">-----------</div>
					<div class="li2">-----------</div>
					<div class="li1">-----------</div>
					<div class="li2">-----------</div>
					<div class="li1">-----------</div>
					<div class="li2">-----------</div>
					<p></p>
					<p>
						<%-- ${Pwd} --%>
					</p>
					<p>dsjkflasjdklf</p>

					</ol></td>
			</tr>
		</table>
	</aside>
	<footer>

		<div class="playbar"
			style="position: fixed; bottom: 0px; height: 70px; vertical-align: center">
			&nbsp; <img id="rewind_btn" src="img/rewind.png" onlick="previousVideo()" style="cursor:pointer";>
				 <img id="pause_btn" src="img/pause.png" onclick="playVideo()" style="cursor:pointer";> 
				 <img id="forward_btn" src="img/forward.png" onclick="nextVideo()" style="cursor:pointer";>

			<div id="myProgress">
				<div id="myBar"></div>
			</div>

			<input type="range" id="myRange" value="90" onchange="setVolume()"
				style="width: 5%; height: 20%;">
			<div id="playbar_right"></div>
		</div>
	</footer>
</body>

</html>