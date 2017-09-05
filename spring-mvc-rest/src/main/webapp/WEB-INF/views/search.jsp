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

body{
  background: #f2f2f2;
  font-family: 'Open Sans', sans-serif;
}

.search {
  width: 100%;
  position: relative
}

.searchTerm {
  float: left;
  width: 100%;
  border: 3px solid #00B4CC;
  padding: 5px;
  height: 40px;
  border-radius: 5px;
  outline: none;
  color: #9DBFAF;
}

.searchTerm:focus{
  color: #00B4CC;
}

.searchButton {
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

/*Resize the wrap to see the search bar change!*/
.wrap{
  width: 30%;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
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
}
</style>
</head>
<body>



<ul>
		<li><a class="active" href="/twitter/home">Home</a></li>
		<li><a class="active" href="/twitter/search">Search</a></li>
		<li><a class="active" href="/controller/friends">Friends</a></li>
		<li><a href="#about">About</a></li>
	</ul>
<div class="wrap">
   <div class="search">
      <input type="text" class="searchTerm" id= "username" placeholder="What are you looking for?">
      <button type="submit" class="searchButton" id="searchBtn"> Search </button>
   </div>
   <div id = "resultUser">${user}</div>
</div>
</body>
</html>