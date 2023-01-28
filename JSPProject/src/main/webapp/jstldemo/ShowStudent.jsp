<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<s:setDataSource driver="com.mysql.cj.jdbc.Driver"
url="jdbc:mysql://localhost:3306/pgdac_sep20222"
user="root" var="mydb" password="syso"/>
<s:query var="rs" dataSource="${mydb}" >select * from student</s:query>
<table border=1>
<tr>
<th>ID</th><th>Name</th><th>Age</th><th>City</th><th>State</th><th>Mobile</th><th>Course</th>
<th>Update</th>
</tr>

	
<c:forEach var="row" items="${rs.rows}">

<tr>
<td>${row.stu_id}</td><td>${row.name}</td><td>${row.age}</td><td>${row.city}</td>
<td>${row.state}</td><td>${row.mobile}</td><td>${row.course}</td>
<td><a href="Form.jsp?sid=${row.stu_id}">Edit</a></td>
</tr>

</c:forEach>
</table>
</body>
</html>