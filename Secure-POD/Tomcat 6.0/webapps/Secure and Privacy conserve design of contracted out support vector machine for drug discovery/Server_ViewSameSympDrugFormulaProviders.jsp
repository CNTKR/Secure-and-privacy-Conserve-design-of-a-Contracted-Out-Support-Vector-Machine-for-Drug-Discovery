<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Same Symptom Drug Formula Providers</title>
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
.style5 {color:#000000}
.style6 {color: #660033}
.style8 {color: #000000; font-size: 18px; }
.style9 {font-size:20px}
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
          <h2 align="center" class="style4">Number of Drug Formula Providers having same Symptom..</h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            <p>
	  	      <%
	String s11="",s12="",s0="",s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="";
	int i=0,j=0,count=0,rank=0,k=0;
	try
	{
			String sql3="select distinct symp from health_record";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s11=rs3.getString(1);
			   
			   String symp=new String(Base64.decode(s11.getBytes()));
			
			 
			%>
            </p>
			
	  	    <table width="572" border="1">
				  <tr>
				    <td colspan="7" ><p class="style9" style="color:#006633" ><span class="style9">Symptom :</span> 
				      <%out.println(symp);%> 
                     </p></td>
			      </tr>
				 
                      <td  width="40"  valign="middle" height="34" style="color: #660033;"><div align="center" class="style2"><b>ID</b></div></td>
                      <td  width="105" valign="middle" height="34" style="color: #660033;"><div align="center" class="style2"><b>Patient Name</b></div></td>
					  <td  width="105" valign="middle" height="34" style="color: #660033;"><div align="center" class="style2"><b>Symptom</b></div></td>
                      <td  width="74"  valign="middle" height="34" style="color: #660033;"><div align="center" class="style2"><b>Upload Date</b></div></td>
                    </tr>
				 
				  <%
					  
					  	
						   	String query="select * from health_record where symp='"+s11+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(3);
								s4=rs.getString(10);
											
						
							String symp1=new String(Base64.decode(s2.getBytes()));
						
						count++;
			   
					 %>
							   <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3"><span class="style5">
                        <%out.println(i);%>
                      </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style10">
                            <b><%out.println(s1);%></b>                            </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style6" style="color:#006633">
                            <a href="Server_SymptomDetails.jsp?type=<%="Server_SameSympPts"%>&ptname=<%=s1%>&symp=<%=symp%>" style="color:#006633"><b><%out.println(symp1);%></b></a> 
							</span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style5">
                            <span class="style5">
                            <%out.println(s4);%>
                            </span></div></td>		
              </tr>
							
	     <%
					 }
			
			       %></table> 	
				   			   
	 				   
	<p>&nbsp;</p>
				<%
			}
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table><p>&nbsp;</p>
					<td height="45" align="center"  valign="middle"><div align="left" class="style99 style100">
				    <form action="Server_ViewSameSympPtInChart.jsp" method="post">
				    <input name="Submit" type="Submit" value="View Same Disease Drug Formula Providers In Chart" />
			 	    </form>
			 	  </div></td>
					
        	
		<p align="center"><a href="ServerMain.jsp" class="style11">Back</a></p>
				  
				  
				  
				  
				  
            
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
