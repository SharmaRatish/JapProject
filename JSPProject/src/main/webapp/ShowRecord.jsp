
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.db.service.DBService" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Record</title>
</head>
<body>
<%!int i=0; %>
<%
try{
session=request.getSession(false);
if(!(session!=null && session.getAttribute("usertype").equals("admin")))
{
	RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
	String msg="<center><font color=red>Login First to Access this Page</font></center>";
	request.setAttribute("msg",msg);
	rd.forward(request, response);
	}
}
catch(Exception e)
{
	response.sendRedirect("Login.jsp");
}
Connection con=DBService.getConnection();
PreparedStatement pst=con.prepareStatement("select * from student");
ResultSet rs=pst.executeQuery();
%>
<table border=1>
<tr>
<th>ID</th><th>Name</th><th>Age</th><th>City</th><th>State</th><th>Mobile</th><th>Course</th>
</tr>
<%while(rs.next()){
	if(i%2==0){ i++;%>
<tr bgcolor="#ccedda">
<td><%=rs.getInt(1)%></td><td><%=rs.getString(2)%></td>
<td><%=rs.getInt(3)%></td><td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td><td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
</tr>
<%}else{i++; %>
<tr bgcolor="#b5c1f5">
<td><%=rs.getInt(1)%></td><td><%=rs.getString(2)%></td>
<td><%=rs.getInt(3)%></td><td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td><td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
</tr>
<%}
} %>
</table>

</body>
</html>