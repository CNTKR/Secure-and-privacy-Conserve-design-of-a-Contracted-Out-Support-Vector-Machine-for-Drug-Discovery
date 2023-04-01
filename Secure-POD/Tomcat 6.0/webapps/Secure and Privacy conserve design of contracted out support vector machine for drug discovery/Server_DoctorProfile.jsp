<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Drug Formula Tester Profile Main</title>
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
.style7 {
	color: #000000;
	font-size: 16px;
}
.style7 {
	color: #660033;
	font-size: 14px;
}
.style8 {font-size: 18px}
.style9 {
	color: #000000;
	font-weight: bold;
}
.style15 {color:#c26a03;
		font-size:18px;}
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
          <h2 align="center" class="style4">Drug Formula Tester <%=request.getParameter("doctor")%>'s Profile..</h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
                    
                    <%
						
						String type=request.getParameter("type");	
						String doctor=request.getParameter("doctor");
						
						
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from doctor where username='"+doctor+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(5);
								s3=rs.getString(6);								
								s4=rs.getString(7);
								s5=rs.getString(8);
								s6=rs.getString(10);
								
								
								
								
					%>
                    <tr>
                      <td width="222" rowspan="8" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                          <input  name="image" type="image" src="doctor_Pic.jsp?id=<%=i%>" style="width:170px; height:150px;" />
                      </a></strong></div></td>
                    </tr>
					<tr>
                      <td  width="184" valign="middle" height="20" style="color: #2c83b0;"><div align="left" class="style7" style="margin-left:20px;"><b><span class="style7">Hospital Name</span></b></div></td>
                      <td  width="133" valign="middle" height="40" style="color:#006600;"><div align="left" class="style38" style="margin-left:20px;">
                          <b><%out.println(s1);%></b>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="184" valign="middle" height="20" style="color: #2c83b0;"><div align="left" class="style7" style="margin-left:20px;"><b><span class="style7">E-Mail</span></b></div></td>
                      <td  width="133" valign="middle" height="40" style="color:#FF8800;"><div align="left" class="style38" style="margin-left:20px;">
                          <b><%out.println(s2);%></b>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="184" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style7" style="margin-left:20px;"><b>Mobile</b></div></td>
                      <td  width="133" valign="middle" height="40" style="color: #000000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s3);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="184" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style7" style="margin-left:20px;"><b>Address</b></div></td>
                      <td  width="133" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s4);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="184" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style7" style="margin-left:20px;"><b>Date of Birth</b></div></td>
                      <td  width="133" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s5);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td   width="184" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style7" style="margin-left:20px;"><b>Status</b></div></td>					  
					  
                      <td  width="133" align="left" valign="middle" height="51" style="color: #000000;"><div align="left">
                          <div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                            <%out.println(s6);%>
                      </div></td>
						
                    </tr>
						
						
                    <%
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
			<h2 align="right">&nbsp;</h2>
			<% 
			if(type.equalsIgnoreCase("Server_Drug Formula TesterProfile")){%>
            <h2 align="right"><a href="Server_ViewSolnReqRes.jsp" class="style15">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("Patient_Sample")){%>
            <h2 align="right"><a href="Patient_ViewSample.jsp" class="style15">Back</a></h2>
			<%}

			%>
				  
				  
				  
				  
				  
            
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
