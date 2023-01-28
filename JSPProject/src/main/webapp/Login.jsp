<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<fieldset>
<legend>Login</legend>
<form action="la" method="post">
USER ID  : <input type="text" name="userid"><br>

PASSWORD : <input type="password" name="password"><br>

<input type="submit" value="Login"> 
<%if(request.getAttribute("msg")!=null)
	{
	out.println(request.getAttribute("msg"));
	}%>
</form>
</fieldset>
</body>
</html>