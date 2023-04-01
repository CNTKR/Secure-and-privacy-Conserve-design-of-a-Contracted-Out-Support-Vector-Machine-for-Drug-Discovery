
<%@ include file="connect.jsp" %>

<%
   
    try
	{
	
				String authid=request.getParameter("authid");      
         		String Password=request.getParameter("pass");
			
			application.setAttribute("authority",authid);
			
			String sql="SELECT * FROM authority where name='"+authid+"' and pass='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				response.sendRedirect("AuthorityMain.jsp");
			}
			else
			{
					response.sendRedirect("AuthorityRe-Login.jsp");
				
			}
	
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>