<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
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
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 30%;
  height: 300px; /* only for demonstration, should be removed */
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
  width: 70%;
  background-color: #f1f1f1;
  height: 300px; /* only for demonstration, should be removed */
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
  <form action="Search" method="post"> 
  <select name="searchtype">
  <option value="na">--Select---</option>
  <option value="byid">Search By ID</option>
  <option value="bycourse">Search By Course</option>
  </select>
  <input type="text" name="search">
  <input type="submit" value="Search">
  </form>
  <%if(request.getAttribute("msg")!=null)
	  {
	  out.println(request.getAttribute("msg"));
	  }%>
  
  <% 	if(request.getAttribute("rs")!=null)
  	{%>
  	<table border=1>
  	<tr>
<th>ID</th><th>Name</th><th>Age</th><th>City</th><th>State</th><th>Mobile</th><th>Course</th>
</tr>
  	
  <%	ResultSet rs=(ResultSet)request.getAttribute("rs");
  
  		do{%>
  		<tr bgcolor="#ccedda">
  		<td><%=rs.getInt(1)%></td><td><%=rs.getString(2)%></td>
  		<td><%=rs.getInt(3)%></td><td><%=rs.getString(4)%></td>
  		<td><%=rs.getString(5)%></td><td><%=rs.getString(6)%></td>
  		<td><%=rs.getString(7)%></td>
  		</tr>		
  		<% }	while(rs.next());
  	}
	  %>
	  </table>
  </article>
</section>

<footer>
  <p>Footer</p>
</footer>

</body>
</html>

