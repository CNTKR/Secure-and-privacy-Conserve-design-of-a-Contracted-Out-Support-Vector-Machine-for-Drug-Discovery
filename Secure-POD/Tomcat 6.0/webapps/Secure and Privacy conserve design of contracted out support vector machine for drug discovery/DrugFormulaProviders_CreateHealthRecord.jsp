<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Create Health Record</title>
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
.style6 {color: #000000;
        font-size:14px;}
.style9 {font-size: 18px}
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
          <h2 align="center" class="style4">Create Drug Formula Record..</h2>
          <div class="clr"></div>
          <div class="post_content">
		  <%
		  		String ptname=(String)application.getAttribute("ptname");
		  		String s0,s1,s2;
				
		  try{
		  
		  					String query="select email,mobile,address from patient where patientname='"+ptname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								s0=rs.getString(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
				
		  
		  
		  
		  %>
		  <form name="s" action="DrugFormulaProviders_CreateHealthRecord1.jsp" method="post" id="" enctype="multipart/form-data" onsubmit="return valid()">				
				
			  <span class="style33">
			  <label for="dtype"><span class="style6">DrugFormulaProviders Name (required)</span></label>
			  </span>
                    <p class="style33">
                      <input id="ptname" name="ptname" value="<%=ptname%>" readonly />
                    </p>
	          <span class="style33 style6">
	          <label for="name">Disease (required)</label>
              </span>
			        <p class="style33">
                      <input id="symp" name="symp" class="text" />
                    </p>
	          <span class="style33">
	          <label for="duration"><span class="style6">Symptoms Description (required)</span></label>
              </span>
			        <p class="style33">
                      <textarea id="sdesc" name="sdesc" rows="3" cols="16"></textarea>
                    </p>
	          <span class="style33 style6">
	          <label for="description">Age (required)</label>
              </span>
			        <p class="style33">
					<input id="age" name="age" class="text" />
					                      
                    </p>
					
	          <span class="style33">
	          <label for="ecg"><span class="style6">Contact No</span></label>
              </span>
			        <p class="style33">
                      <input id="cno" name="cno" value="<%=s1%>" readonly />
                    </p>
			        <span class="style33">
			        <label for="otest"><span class="style6">Email</span><br />
                    </label>
                    </span>
			        <p class="style33">
                      <input id="mail" name="mail" value="<%=s0%>" readonly />
                    </p>
	          		<span class="style33">
			        <label for="bplevel"><span class="style6">Address</span><br />
                    </label>
                    </span>
			        <p class="style33">
                      <textarea id="address" name="address" rows="3" cols="16"><%=s2%></textarea>
                    </p>
					<span class="style33">
			        <label for="sugarlevel"><span class="style6">Add Drug Fomula For Symptoms </span><br />
                    </label>
                    </span>
			        <p class="style33">
                      <textarea id="ameasure" name="ameasure" rows="3" cols="16"></textarea>
                    </p>
					
			  <span class="style33">
	          <label for="pic"><span class="style6">Add Symptom Image</span></label>
              </span>
			        <p class="style33">
                      <input type="file" id="pic" name="pic" class="text" />
                    </p>
                    <p><br />
                      <input name="submit" type="submit" value="Upload Details" />
                    </p>
                    <p>&nbsp;</p>
			        <p align="left" class="style64"><a href="DrugFormulaProvidersMain.jsp" class="style61">Back</a></p>
										
            </form>
				  
				  
		              <%

	   				}

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
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
