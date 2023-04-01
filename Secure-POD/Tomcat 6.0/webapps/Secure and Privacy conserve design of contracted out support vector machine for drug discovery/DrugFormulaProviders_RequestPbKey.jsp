<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="org.bouncycastle.util.encoders.Base64" %>
<%@ page import="java.util.Date" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Request Public Key</title>
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
.style10 {color: #333333}
.style22 {	color: #006600;
	font-size: 22px;
}
.style12 {color: #000000}
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
          <li><a href="DrugFormulaProvidersLogin.jsp"><span>Drug Formula Providers</span></a></li>
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
          <h2 align="center" class="style4">Request Public Key..</h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
		  			<form action="DrugFormulaProviders_RequestPbKey.jsp" method="post">
				<div align="center">
				  <input type="hidden" value=<%="reqkey"%> name="reqkey"/>
				  <input type="submit" name="Submit" value="Request Public Key" style="height:40px;width:180px;" />
			      </div>
            </form>
            <div align="center">
              <p class="style51">&nbsp;</p>
               
			    <%
						String ptname=(String )application.getAttribute("ptname");
												

						
						try 
						{
							
							String reqkey=request.getParameter("reqkey");
							String s1="",s2,s3,s4,s5;
						
						if(reqkey.equalsIgnoreCase("reqkey"))
						{
										String query="select pbkey from pbkey_req where ptname='"+ptname+"' "; 
										Statement st=connection.createStatement();
										ResultSet rs=st.executeQuery(query);
										if ( rs.next()==true )
										{
										
											s1=rs.getString(1);
										}
										if (s1.equalsIgnoreCase(""))
										{
																				
													SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
													SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
													Date now = new Date();
		
													String strDate = sdfDate.format(now);
													String strTime = sdfTime.format(now);
													String dt = strDate + "   " + strTime;
													
													
											String status = "waiting";
					  
								   PreparedStatement ps=connection.prepareStatement("insert into pbkey_req(ptname,pbkey,reqdt,resdt) values(?,?,?,?)");
												  ps.setString(1,ptname);
												  ps.setString(2,status);
												  ps.setString(3,dt);	
												  ps.setString(4,status);
												 												
												  ps.executeUpdate();
										
											%><p><span class="style57 style10">Public Key Requested Successfully.. </span></p>
<%
										}
										else if (s1.equalsIgnoreCase("waiting"))
										{
										
											%><p><span class="style57 style10">Public Key is Not Generated for You!!.. </span></p>
<%
										}
										else 
										{
										
											%><p><span class="style54 style2 style12">Your Public Key is : </span><span class="style22"><%=s1%></span></p>
<%
										}
						}
							
					
					
						connection.close();
					}
					catch(Exception e)
					{
						e.printStackTrace();
					}
					%>
            </div>
            <p align="center"><a href="DrugFormulaProvidersMain.jsp" class="style55">Back</a></p>
				  
				  
				  
				  
				  
            
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
            <li><a href="DrugFormulaProvidersMain.jsp">Home</a></li>
			<li><a href="DrugFormulaProvidersLogin.jsp">Logout</a></li>
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
