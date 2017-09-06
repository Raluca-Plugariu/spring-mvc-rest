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
 position: absolute;  
  right: -50px;
  width: 80px;
  height: 40px;
  border: 1px solid #00B4CC;
  background: #00B4CC;
  text-align: center;
  color: #fff;
  border-radius: 5px;
  cursor: pointer;
  font-size: 20px;
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
	<div style="display: flex;justify-content: space-around;margin-right: 170px;">
	<div class = "users">
	<div class="mess">All Users</div>
	<br></br>

	<div id="usersResult">
			
	</div>
	</div>
	<br></br>
	<div class = "friends">
	<div class="mess">Your Friends</div>
	<br></br>

	<div id="usersFriends">
			
	</div>
	</div>
	</div>
	
	


</body>
</html>
