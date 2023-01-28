package com.es.session;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.service.DBService;

@WebServlet("/la")
public class LoginAuth extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginAuth() {
        super();
        // TODO Auto-generated constructor stub
    }
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			PrintWriter out=resp.getWriter();
			resp.setContentType("text/html");
		try {
			Connection con=DBService.getConnection();
			PreparedStatement pst=con.prepareStatement("select * from login where "
					+ "userid=? and password=?");
			String uid=req.getParameter("userid");
	    	String pass=req.getParameter("password");
	    	pst.setString(1,uid);
	    	pst.setString(2, pass);
	    	ResultSet rs=pst.executeQuery();
	    	if(rs.next())
	    	{
	    		if(rs.getString("usertype").equals("admin"))
	    		{
	    		HttpSession hs=req.getSession();
	    		hs.setAttribute("usertype", rs.getString("usertype"));
	    		hs.setAttribute("user", rs.getString("userid"));
	    		RequestDispatcher rd=req.getRequestDispatcher("ShowStudentRecord.jsp");
	    		rd.forward(req, resp);
	    		}
	    		else
	    		{
	    			resp.sendRedirect("User.jsp");
	    		}
	    	}
	    	else
	    	{
	    		RequestDispatcher rd=req.getRequestDispatcher("Login.jsp");
	    		String msg="<center><font color=red>Invalid UserID or Password</font></center>";
	    		req.setAttribute("msg",msg);
	    		rd.forward(req, resp);
	    	}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
