<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream,org.bouncycastle.util.encoders.Base64" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Comment Status Page</title>
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
.style10 {
	color: #000000;
	font-size: 18px;
}
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
          <h2 align="center" class="style4">Given Comment Status..</h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            <div align="center">
              <%
		  String ptname=request.getParameter("ptname");
		  String symp=request.getParameter("symp");
		  String pvkey=request.getParameter("pvkey");
	
		  String symp1=new String(Base64.encode(symp.getBytes()));
		  
		  String cmt_by=(String)application.getAttribute("ptname");
		  		  
	try {
    
		  

            SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
	
		
		String comment=request.getParameter("com");
	
		String comment1=new String(Base64.encode(comment.getBytes()));

		PreparedStatement pst=connection.prepareStatement("insert into frd_comments(symp,ptname,comments,cmt_by,dt) values(?,?,?,?,?)");
             
			pst.setString(1,symp1);
            pst.setString(2,ptname);
            pst.setString(3,comment1);
			pst.setString(4,cmt_by);
			pst.setString(5,dt);
			
			pst.executeUpdate();
		
					 
                  %> 
                        <span class="style4 style1 style8"><span class="style1  style12 style10"> Commented Successfully...</span></span>                    </div>
            <p align="center"><a href="DrugFormulaProviders_EnterPvKey.jsp?ptname=<%=ptname%>&pvkey=<%=pvkey%>" class="style47">Back</a></p>
                  <%
								
		} 
		catch (Exception e) {
		e.printStackTrace();
		}	
	
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
