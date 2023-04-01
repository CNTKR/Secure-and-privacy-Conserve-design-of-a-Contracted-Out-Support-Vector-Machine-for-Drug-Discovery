<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Friend Profile</title>
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
.style9 {font-size: 18px}
.style16 {color: #c26a03; font-size: 16px; }
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
          <h2 align="center" class="style4"><%=request.getParameter("fname")%>'s Profile..</h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            <table width="500" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            
            
            <%
						String type=request.getParameter("type");
						String fname=request.getParameter("fname");
						String symp=request.getParameter("symp");
						String ptname=request.getParameter("ptname");						
						
						
						String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0;
						try 
						{
						   	String query="select * from patient where patientname='"+fname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(9);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								
								
					%>
            <tr>
              <td width="180" rowspan="8" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:150px; height:150px;" />
              </a></strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="37" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>E-Mail</b></div></td>
              <td  width="133" valign="middle" height="40" style="color:#FF3300;"><div align="left" class="style66" style="margin-left:20px;">
                          <b><%out.println(s2);%></b>
                      </div></td>
            </tr>
            <tr>
              <td  width="141" height="40" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Mobile</b></div></td>
              <td  width="133" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s3);%>
                      </div></td>
            </tr>
            <tr>
              <td height="43" align="left" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Address</b></div></td>
              <td  width="133" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s4);%>
                      </div></td>
            </tr>
            <tr>
              <td  width="141" height="43" align="left" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Date of Birth</b></div></td>
              <td  width="133" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s5);%>
                      </div></td>
            </tr>
            <tr>
              <td  width="141" height="40" align="left" valign="middle" style="color: #660000;"><div align="left" class="style6" style="margin-left:10px;"><b>Gender</b></div></td>
              <td  width="133" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style6" style="margin-left:20px;">
                          <%out.println(s6);%>
                      </div></td>
            </tr>
			
			
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
          </table>
	
				  <p>&nbsp;</p>		
			<h2 align="right">&nbsp;</h2>
			<% 
			if(type.equalsIgnoreCase("Server_PtFrdProfile")){%>
            <h2 align="right"><a href="Server_ViewFrdSoln1.jsp?ptname=<%=ptname%>&symp=<%=symp%>" class="style16">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("Server_Sp")){%>
            <h2 align="right"><a href="Server_Sp.jsp" class="style16">Back</a></h2>
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
