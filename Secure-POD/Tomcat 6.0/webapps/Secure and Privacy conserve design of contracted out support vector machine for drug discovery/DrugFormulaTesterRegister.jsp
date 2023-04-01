<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Drug Formula Tester Registration</title>
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
	color: #FF0000;
	font-size: 16px;
	font-weight: bold;
}
.style10 {font-size: 16px}
.style33 {font-weight: bold}
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
          <h2 align="center" class="style4">Welcome To Drug Formula Testers Registration..</h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p><img src="images/Register.jpg" width="330" height="152" /></p>
            <form action="DrugFormulaTesterRegisterStatus.jsp" method="post" id="" enctype="multipart/form-data">		                       
			  <span class="style33">
	          <label for="hospital"><span class="style6">Select Hospital Name</span></label>
              </span>
			        <p class="style3"><strong>
                    <select id="s1" name="hname" style="width:150px;" class="text">
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
                    </strong></p>
						
			        <span class="style3">
			        <label for="name"><span class="style10">User Name (required)</span></label>
			        </span>
                    <p class="style3">
                      <input id="name" name="userid" class="text" />
                    </p>
	                <span class="style3">
	                <label for="password">Password (required)</label>
                    </span>
			        <p class="style3">
                      <input type="password" id="password" name="pass" class="text" />
                    </p>
	                <span class="style3">
	                <label for="email"><span class="style10">Email Id (required)</span></label>
                    </span>
			        <p class="style3">
                      <input id="email" name="email" class="text" />
                    </p>
	                <span class="style3">
	                <label for="mobile">Mobile Number (required)</label>
                    </span>
			        <p class="style3">
                      <input id="mobile" name="mobile" class="text" />
                    </p>
	                <span class="style3">
	                <label for="address"><span class="style10">Address (required)</span></label>
                    </span>
			        <p class="style3">
                      <textarea id="address" name="address" rows="3" cols="16"></textarea>
                    </p>
			        <span class="style3">
			        <label for="dob"><span class="style10">Date of Birth (required)</span><br />
                    </label>
                    </span>
			        <p class="style3">
                      <input id="dob" name="dob" class="text" />
                    </p>
	                <span class="style3">
	                <label for="gender"><span class="style10">Select Gender (required)</span></label>
                    </span>
			        <p class="style3"><strong>
                    <select id="s3" name="gender" style="width:150px;" class="text">
                      <option>--Select--</option>
                      <option>MALE</option>
                      <option>FEMALE</option>
                    </select>
                    </strong></p>
			        <span class="style3">
	                <label for="pic"><span class="style10">Select Profile Picture (required)</span></label>
                    </span>
			        <p class="style33">
                      <input type="file" id="pic" name="pic" class="text" />
                    </p>
                    <p><br />
                      <input name="submit" type="submit" value="REGISTER" />
                    </p>
                    <p>&nbsp;</p>
			        <p align="left" class="style64"><a href="DrugFormulaTesterLogin.jsp" class="style61">Back</a></p>
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
