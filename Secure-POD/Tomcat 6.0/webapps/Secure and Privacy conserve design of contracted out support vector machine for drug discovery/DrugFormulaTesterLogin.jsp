<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Drug Formula Tester Login</title>
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
.style6 {
	color: #FFFF00;
	font-size: 16px;
}
.style9 {
	color: #000000;
	font-weight: bold;
}
.style10 {color: #FFFF00}
.style11 {font-size: 16px}
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
          <li><a href="DrugFormulaTesterLogin.jsp"><span>Drug Formula Tester</span></a></li>
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
          <h2 align="center" class="style4">Welcome To Drug Formula Testers &amp; Analytical Model Provider Login..</h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p><img src="images/Login.jpg" width="203" height="139" /></p>
            <form id="form1" name="form1" method="post" action="DrugFormulaTesterAuthentication.jsp">
				   					
					<table width="469" border="0" cellspacing="2" cellpadding="2">
					 <tr>
                       <td width="159" height="33" bgcolor="#FF0000"><div align="justify" class="style10"><span class="style11">Select Hospital Name </span></div></td>
                        <td width="275"><label>
                          <select id="s1" name="hname" style="width:150px;">
                            <option>--Select--</option>
							<option>Apollo Hospital</option>
						    <option>Jayadeva Hospital</option>
							<option>Fortis Hospital</option>                           
							<option>Nethradhama Hospital</option>
							<option>Vasan Eye Care Hospital</option>
							<option>Manipal Hospital</option>
                            <option>Columbia Asia Hospital</option>						   
							<option>Cloudnine Hospital</option>							
					    </select>
                       </label></td>
                      </tr>
                      <tr>
                        <td width="159" height="46" align="justify" bgcolor="#FF0000"><span class="style34 style10">
                          <label for="name"><span class="style11">User Name (required)</span></label>
                        </span> </td>
                        <td width="275"><input id="uname" name="userid" class="text" /></td>
                      </tr>
                      <tr>
                        <td height="40" align="justify" bgcolor="#FF0000"><span class="style6">Password (required)</span></td>
                        <td><input type="password" id="pass" name="pass" class="text" /></td>
                      </tr>
                      <tr>
                        <td bgcolor="#FF0000"><span class="style10"></span></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><span class="style16">
                          <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
						  <span class="style9"> New Registration?</span></span><a href="DrugFormulaTesterRegister.jsp" class="style30 style2"> Register </a></td>
                          <td width="8"></span>
                          <td width="1"></td>
                      </tr>
              </table>
					
		    </form>
				  
				  
				  
				  
				  
            
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
            <li><a href="index.html">Home</a></li>
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
