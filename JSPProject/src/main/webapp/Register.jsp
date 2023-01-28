<!DOCTYPE html>
<html lang="en">
<head>
<title>CSS Template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color: #666;
  padding: 10px;
  text-align: center;
  font-size: 35px;
  color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 20%;
  height: 500px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 80%;
  background-color: #f1f1f1;
  height: 500px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section::after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
</style>
</head>
<body>
<header>
  <h2><marquee>CDAC SEP-2022</marquee></h2>
</header>

<section>
  <nav>
    <%@include file="Menu.jsp" %>
  </nav>
  
  <article>
  <fieldset>
<legend>Registration Form</legend>
<pre>
<form action="register" method="post">
Student Name  : <input type="text" name="name"> 
Student Age   : <input type="text" name="age">
Student City  : <input type="text" name="city">
Student state : <input type="text" name="state">
Mobile        : <input type="text" name="mobile">
Course        : 
				<input type="radio" name="course" value="B.Tech">B.Tech
				<input type="radio" name="course" value="BCA">BCA
				<input type="radio" name="course" value="MCA">MCA
				<input type="radio" name="course" value="MBA">MBA
				<input type="radio" name="course" value="M.Tech">M.Tech<br>
				
<input type="submit" value="Register">
</form>
</pre>
</fieldset>
  </article>
</section>

<footer>
  <p>Footer</p>
</footer>

</body>
</html>

