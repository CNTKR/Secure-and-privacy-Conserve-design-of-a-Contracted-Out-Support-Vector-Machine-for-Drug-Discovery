<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Select Drug Formula Tester</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">
function valid()
{

var na1=document.form1.doctor.value;
if(na1=="--Select--")
{

alert("Please Select Drug Formula Tester Name");
document.form1.doctor.focus();
return false;
}

}
</script>
<style type="text/css">
<!--
.style2 {font-size: 14px}
.style3 {color: #FF0000}
.style4 {
	font-size: 24px;
	color: #FF0000;
}
.style10 {
	color: #660033;
	font-weight: bold;
	font-size: 16px;
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
          <h2 align="center" class="style4">Select Drug Formula Tester..</h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
				  <form id="form1" name="form1" method="post" action="DrugFormulaProviders_RequestDrSoln3.jsp" onsubmit="return valid()" ons>
			<p>
                      <%
	
      	
			String hname= request.getParameter("hname");
			String ptname=request.getParameter("ptname");
			String symp=request.getParameter("symp");

      	try 
	{
      		
      		 ArrayList ak=new ArrayList();
			
      		
      		 
           
           String query="select distinct(username) FROM doctor where hname='"+hname+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			ak.add(rs.getString(1));
			
		
	   }
	   
		
		
%>
                      
          </p>
				   					
					<table width="426" border="0" cellspacing="2" cellpadding="2">
					 
					   <tr>
                        <td width="110" height="33"><div align="justify"><span class="style8 style38 style10 style1">Drug Formula Tester Name</span></div></td>
                        <td width="302"><label>
                          <select id="s1" name="doctor">
						  <option>--Select--</option>
                             <% 
							for(int i=0;i<ak.size();i++)
							{
							 
								 %>
								<option><%= ak.get(i)%></option>
								<%
							}
							%>
					    </select>
                        </label></td>
                      </tr>
					  <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
					  <tr>
                        <td>&nbsp;</td>
                        <td><span class="style16">
                          <input type="submit" value="Send Request" style="width:100px; height:35px; background-color:#660033; color:#FFFFFF;"/>
						  <input type="hidden" value="<%=ptname%>" name="ptname" readonly />
						  <input type="hidden" value="<%=symp%>" name="symp" readonly />
						  <input type="hidden" value="<%=hname%>" name="hname" readonly />
						 </td>
                          
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
              </table>
					<p>
		              <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </p>
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
