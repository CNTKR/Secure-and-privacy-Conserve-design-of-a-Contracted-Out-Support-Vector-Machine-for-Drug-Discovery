	<%@ include file="connect.jsp" %>
 	<%
  		
   	try {
		   
			
			String id=request.getParameter("id");
			String str = "Authorized";
       		Statement st1 = connection.createStatement();
       		String query1 ="update doctor set status='"+str+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			connection.close();
			response.sendRedirect("Server_AuthorizeDrug Formula Testers.jsp");  
			
			
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
