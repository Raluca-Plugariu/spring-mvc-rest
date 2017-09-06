<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="<c:url value="/resources/getrequest.js"/>">
</script>
<script src="<c:url value="/resources/getfriends.js"/>">
</script>
<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans);

body{
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

.btn {
	width: 150px;
	text-align: center;
	font-size: 15px;
	padding: 5px !important;
	background-color: #6DB33F;
	border: 0px !important;
	color: white;
	text-decoration: none;
	display: inline-block !important;
	vertical-align: top !important;
	font-size: 16px;
	font-family: 'Raleway', sans-serif !important;
	border: solid 0px #707070 !important;
}

.fct_btn {
	color: #6DB33F;
	font-size: 16px;
	margin-left: 60px;
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

	<br></br>

	<div class="mess">All Users</div>
	<br></br>

	<div id="usersResult">
			
	</div>
	<br></br>
	
	<div class="mess">Your Friends</div>
	<br></br>

	<div id="usersFriends">
			
	</div>
	
	
	
	


</body>
</html>
