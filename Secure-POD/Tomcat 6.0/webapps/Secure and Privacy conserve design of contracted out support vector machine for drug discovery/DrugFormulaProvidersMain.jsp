<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>DrugFormulaProviders Main</title>
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
          <h2 align="center" class="style4">Welcome Drug Formula Provider <%=(String)application.getAttribute("ptname")%>..</h2>
          <div class="clr">
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p><img src="images/Doctor.jpg" width="611" height="280" /></p>
            <p>&nbsp;</p>
          </div>
          <div class="post_content">
		  
				  
				  
				  
				  
				  
            
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
          <h2 class="star">DrugFormulaProviders Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li>
              <div align="justify"><strong><a href="DrugFormulaProvidersMain.jsp">Home</a></strong></div>
            </li>
			<li>
			  <div align="justify"><strong><a href="DrugFormulaProvidersProfile.jsp">View My Profile</a></strong></div>
			</li>
			
			<li>
			  <div align="justify"><strong><a href="DrugFormulaProviders_CreateHealthRecord.jsp">Create Drug Formula Record</a></strong></div>
			</li>
			<li>
			  <div align="justify"><strong><a href="DrugFormulaProviders_ViewAllMySymptoms.jsp">View all Your Drug Formulas </a></strong></div>
			</li>
			<li>
			  <div align="justify"><strong><a href="DrugFormulaProviders_RequestPbKey.jsp">Request Public key</a></strong></div>
			</li>
			
			<li>
			  <div align="justify"><strong><a href="DrugFormulaProviders_RequestPvKey.jsp">Request Private key</a></strong></div>
			</li>
			<li>
			  <div align="justify"><strong><a href="DrugFormulaProviders_ViewSymptomsMatch.jsp">View All Drug Formula Providers Results</a></strong></div>
			</li>
			<li>
			  <div align="justify"><strong><a href="DrugFormulaProviders_RequestDrSoln.jsp">Request Tested Results From Drug Formula Testers</a></strong></div>
			</li>
			<li>
			  <div align="justify"><strong><a href="DrugFormulaProviderstLogin.jsp">Logout</a></strong></div>
			</li>
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
