
<%@page import="com.db.service.DBService"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/> 

    <script src="./js/jquery-3.1.1.min.js"></script>
    <script src="./js/popper.min.js"></script>         <!-- for bootstap dropdown sequence yhi rahega-->
    <script src="./js/bootstrap.min.js"></script>

</head>
<body>

<s:setDataSource driver="com.mysql.cj.jdbc.Driver"
url="jdbc:mysql://localhost:3306/pgdac_sep20222"
user="root" var="mydb" password="syso"/>
<c:if test="${param.sid !=null}">
<s:query var="rs" dataSource="${mydb}" >select * from student where stu_id=${param.sid};</s:query>
    <fieldset>
    <legend>Registration form</legend>
    <c:forEach var="row" items="${rs.rows}">
    <form action="Form.jsp" method="get">

         <div class="container"> 
            <div class="jumbotron " style="background-color:lightblue;">
            
             <input type="hidden" class="form-control" name="stu_id" value="${row.stu_id}"/>
             
             
                 <div class="form-group"> 
                    <label for="fullname">Full Name:</label>
                     <input type="text" class="form-control" readonly="readonly" name="name" value="${row.name}"/>
             </div> 
             <div class="form-group">
                 <label for="number">age:</label> 
                 <input type="number" class="form-control" readonly="readonly" name="age" value="${row.age}" /> 
                </div> 
                
                          <div class="form-group">
               <label for="state">Choose State</label>
                
                 

<select name="state" value="${row.state}"  class="form-control">
  <option value="select">---Select State---</option>
  <option value="mp">Mp</option>
  <option value="up">up</option>
  <option value="uk">uk</option>
  <option value="bhind">Bhind</option>
</select>
                </div> 
                
                 <div class="form-group">
               <label for="city">Choose City</label>
                
			                 
			
			<select name="city" value="${row.city}" id="city" class="form-control">
			  <option value="select">---Select City---</option>
			  <option value="gwalior">Gwalior</option>
			  <option value="indore">Indore</option>
			  <option value="delhi">Delhi</option>
			  <option value="malanp">Malanpur</option>
			</select>
			                </div> 
                
                <div class="form-group">
                 <label for="mobile">Mobile No.</label> 
                 <input type="text" class="form-control" name="mobile" value="${row.mobile}"/> 
                           </div>         
                

                      <input type="submit" class="btn btn-primary" value="update" name="update"/>
              </div>
           </div>
     </form>
     </c:forEach>
     </fieldset>
     </c:if>
    <c:if test="${param.update !=null}">
    			<%-- <c:out value="Welcome">
    			<%
    			Connection conn=DBService.getConnection();
    			//Statement st=conn.createStatement();
    		PreparedStatement pst=conn.prepareStatement("update student set city=?,state=?,mobile=? where stu_id=?");
    			
    			
    					
    		
    			pst.setString(1, request.getParameter("city"));
    			pst.setString(2, request.getParameter("state"));
    			pst.setString(3, request.getParameter("mobile"));
    			pst.setInt(4, Integer.parseInt(request.getParameter("sid")));
    			
    			
    			int i=pst.executeUpdate();
    			
    			if (i>0) 
    			{
    				response.sendRedirect(request.getServletContext().getContextPath()+"/jstldemo/ShowStudent.jsp");
    			}
    			%>
    			</c:out> --%>
    			
    			<% %>
    
    </c:if>
    
    
</body>
</html>