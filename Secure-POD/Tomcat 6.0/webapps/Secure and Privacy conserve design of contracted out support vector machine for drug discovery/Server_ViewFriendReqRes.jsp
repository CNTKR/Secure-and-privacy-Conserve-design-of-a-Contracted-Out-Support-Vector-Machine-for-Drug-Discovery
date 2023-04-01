<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Friend Requests & Responses</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 14px}
.style3 {color: #FF0000}
.style4 {
	font-size: 24px;
	color: #FF0000;
}
.style6 {color: #000000}
.style8 {color: #000000; font-size: 18px; }
.style10 {color:#660033}
.style11 {color:#006633}
.style12 {color:#FF0066}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="ServerLogin.jsp"><span>CSP</span></a></li>
          <li><a href="PatientLogin.jsp"><span>Drug Formula Providers</span></a></li>
          <li><a href="Drug Formula TesterLogin.jsp"><span>Drug Formula Tester</span></a></li>
          <li><a href="AuthorityLogin.jsp"><span>Key Generation Center</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1 class="style2"><span class="style3">Secure and Privacy conserve design of contracted out support<br />
          vector machine for drug discovery <br />
        </span></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="271" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="271" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="271" alt="" /> </a> </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center" class="style4">All Friend Requests and Responses..</h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            <table width="650" border="1" align="center">
                    <tr>
                      <td width="27" height="47" align="center" valign="middle"><div align="center" class="style2"><span class="style6"><b>Id </b></span></div></td>
                      <td width="100" align="center" valign="middle"><div align="center" class="style2"><b><span class="style10">Request From </span></b></div></td>
                      <td width="105" align="center" valign="middle"><div align="center" class="style2"><b><span class="style10">Requested User </span></b></div></td>
                      <td width="101" align="center" valign="middle"><div align="center" class="style2"><b><span class="style10">Request To </span></b></div></td>
                      <td width="105" align="center" valign="middle"><div align="center" class="style2"><b><span class="style10"> Request To Name </span></b></div></td>
					  <td width="70" align="center" valign="middle"><div align="center" class="style2"><b><span class="style10">Status</span></b></div></td>
                      <td width="87" align="center" valign="middle"><div align="center" class="style2"><b><span class="style10">Date</span></b></div></td>
                    </tr>
                    <%
 
      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0,k=0;

     try 
	{
           			   
					   String query="select * from frequest"; 
					   Statement st=connection.createStatement();
					   ResultSet rs=st.executeQuery(query);
					   while( rs.next() )
					   {
						
								i=rs.getInt(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(5);
								s5=rs.getString(4);
							
				
								String query1="select * from patient where patientname='"+s2+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
							 	while( rs1.next() )
							 	{
									j=rs1.getInt(1);  
							
									String query2="select * from patient where patientname='"+s3+"'"; 
									Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(query2);
									while( rs2.next() )
								 	{
										k=rs2.getInt(1);  
								
		
%>
                    <tr>
                      <td height="111"><div align="center" class="style48 style52 style54" style="color:#000000"><%=i%></div></td>
                      <td><div align="center" class="style48 style52 style54">
                          <input  name="image" type="image" src="user_Pic.jsp?id=<%=j%>" width="100" height="100" alt="Submit" />
                      </div></td>
                      <td><div align="center" class="style11"><b><%=s2 %></b></div></td>
                      <td><div align="center" class="style52 style54">
                          <input  name="image2" type="image" src="user_Pic.jsp?id=<%=k%>" width="100" height="100" alt="Submit" />
                      </div></td>
                      <td><div align="center" class="style12"><b><%=s3 %></b></div></td>
					  <td><div align="center" class="style48 style52 style54" style="color:#000000"><b><%= s4%></b></div></td>
                      <td><div align="center" class="style48 style52 style54" style="color:#000000"><%= s5%></div></td>
                    </tr>
                    <%
		  }
	  }
		
	   }
	 

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
					<p>&nbsp;</p>
			<table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="right"><a href="ServerMain.jsp" class="style14">Back</a></div></td>
            </tr>
          </table>
				  
				  
				  
				  
				  
            
          </div>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="ServerMain.jsp">Home</a></li>
			<li><a href="Server_AuthorizeUsers.jsp">View all Users and Authorize</a></li> 
			<li><a href="Server_AuthorizeDrug Formula Testers.jsp">View all Drug Formula Testers and Authorize</a></li> 
		    <li><a href="Server_ViewFriendReq.jsp">View Friend Requests and Respsonses</a></li>
			<li><a href="ServerLogin.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">  </div>
</div>
</body>
</html>
