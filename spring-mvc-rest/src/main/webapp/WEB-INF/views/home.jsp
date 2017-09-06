<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="<c:url value="/resources/postrequest.js"/>">
	
</script>
<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans);

body {
	background: #f2f2f2;
	font-family: 'Open Sans', sans-serif;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #111; . wrapper { border : 1px solid #000;
	display: inline-block;
}

input, button {
	background-color: transparent;
	border: 0;
}

.search {
	width: 100%;
	position: relative
}

.wrap {
	width: 30%;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.searchTerm {
	float: left;
	width: 100%;
	border: 3px solid #333;
	padding: 5px;
	height: 40px;
	border-radius: 5px;
	outline: none;
	color: #9DBFAF;
}

.searchTerm:focus {
	color: #1f2e2e;
}

.searchButton {
	position: absolute;
	right: -50px;
	width: 80px;
	height: 40px;
	border: 1px solid #111;
	background: #111;
	text-align: center;
	color: #fff;
	border-radius: 5px;
	cursor: pointer;
	font-size: 20px;
}
}
</style>
</head>
<body>

	<ul>
		<li><a class="active" href="/twitter/home">Home</a></li>
		<li><a class="active" href="/twitter/search">Search</a></li>
		<li><a class="active" href="/twitter/friends">Friends</a></li>
		<li><a href="#about">About</a></li>
	</ul>

	<div class="padding_container">Hello, Raluca Plugariu!</div>
	<br></br>
	<div class="padding">Write a post here</div>

	<div class="wrap">
		<div class="search">
			<input type="text" class="searchTerm" name="content" id="content">
			<button type="submit" id="postBtn" class="searchButton">Post!</button>
		</div>
	</div>

	<br></br>
	<br></br>
	<div class="mess">Your friends posts</div>
	<br></br>

	<div id="mess-list">
		<c:forEach var="messagesList" items="${messages}">

			<span class="bold_font"><c:out value="${messagesList.content}" /></span>
			<!-- using the relative path in the URL -->
			<br></br>
		</c:forEach>

	</div>
	<br>
	<br></br>

	<div class="mess">Your posts</div>
	<div id="user-mess-list">
		<c:forEach var="userMess" items="${userMessage}">

			<span class="bold_font"><c:out value="${userMess.content}" /></span>
			<!-- using the relative path in the URL -->
			<br></br>
		</c:forEach>
	</div>
</body>
</html>
