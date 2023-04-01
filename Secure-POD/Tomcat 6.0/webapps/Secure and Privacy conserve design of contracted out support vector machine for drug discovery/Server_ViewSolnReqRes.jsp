<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Solution Request and Response</title>
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
.style6 {
	color: #660033;
	font-size: 14px;
}
.style7 {color:#FF3300}
.style9 {
	color: #000000;
	font-weight: bold;
}
.style10 { color:#006633}
.style11 {color:#c26a03}
.style13 { color:#CC0066}
.style15 {font-size:12px}
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
          <h2 align="center" class="style4">Solution Request and Response by Drug Formula Tester..</h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
            <table width="700" border="1" align="center"  cellpadding="0" cellspacing="0"  >
               <tr>
                 <td  width="43" height="34" valign="baseline"   style="color: #2c83b0;"><div align="center" class="style6" ><b>SI NO</b></div></td>
				 
                 <td  width="102" height="34" valign="baseline"  style="color: #2c83b0;"><div align="center" class="style6" ><b> Drug Formula Provider Name </b></div></td>
                 <td  width="85" height="34" valign="baseline"  style="color: #2c83b0;"><div align="center" class="style6" ><b>Disease</b></div></td>
				 <td  width="116" height="34" valign="baseline"  style="color: #2c83b0;"><div align="center" class="style6" ><b>Hospital Name</b></div></td>
				 <td  width="113" height="34" valign="baseline"  style="color: #2c83b0;"><div align="center" class="style6" ><b>Drug Formula Tester</b></div></td>
				 <td  width="120" height="34" valign="baseline"  style="color: #2c83b0;"><div align="center" class="style6" ><b>Requested Date</b></div></td>
                 <td  width="105" height="34" valign="baseline"  style="color: #2c83b0;"><div align="center" class="style6" ><b>Tested Result </b></div></td>
                 
				 
                 
               </tr>
         
		 
		   
            <%
					  
				
					  String doctor="",symp="",hname="",ptname="",date="";
					  int i=1,j=0,count=0,r=0;
					
						try 
						{
							
							
						   	String query="select * from solution_req "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
				
								ptname=rs.getString(2);
								hname=rs.getString(3);
								doctor=rs.getString(4);
								symp=rs.getString(5);
								date=rs.getString(6);
								
								
								String doctor1=new String(Base64.decode(doctor.getBytes()));
								String ptname1=new String(Base64.decode(ptname.getBytes()));
								String hname1=new String(Base64.decode(hname.getBytes()));
								String symp1=new String(Base64.decode(symp.getBytes()));
																
								count++;
								
					%>
            <tr>
              <td height="0"  valign="middle">
                  <div align="center" class="style5" >
                    <div align="center">
                    <%out.println(i);%>
                </div>
              </div></td>
			  <td height="0"  valign="middle">
                  <div align="center" class="style7"  >
                    
       			    <b><%out.println(ptname1);%> </b>
              </div></td>
			  <td height="0"  valign="middle">
                  <div align="center" title="Click to View <%=symp1%> Symptom Details" class="style9"  >
                    
       			   <a href="Server_SymptomDetails.jsp?type=<%="Server_SymptomDetails"%>&ptname=<%=ptname1%>&symp=<%=symp1%>" style="color:#993300"> <b><%out.println(symp1);%> </b></a>
              </div></td>
			  <td height="0"  valign="middle">
                  <div align="center" class="style10"  >
                    
       			    <b><%out.println(hname1);%> </b>
              </div></td>
			  <td height="0"  valign="middle">
                  <div align="center" class="style13" title="Click to View Dr. <%=doctor1%>'s Profile"  >
                    
       			     <a href="Server_Drug Formula TesterProfile.jsp?type=<%="Server_Drug Formula TesterProfile"%>&doctor=<%=doctor1%>" style="color:#CC0066"><b><%out.println(doctor1);%> </b> </a>
              </div></td>
			  <td height="0"  valign="middle">
                  <div align="center" class="style5" >
                 	 <%out.println(date);%> 
              </div></td>
			 <td  width="105" align="middle" valign="middle" height="23"><a href="Server_ViewDrSolution.jsp?ptname=<%=ptname1%>&symp=<%=symp1%>&hname=<%=hname1%>&doctor=<%=doctor1%>" class="style15" style="color:#660033" title="Click to View Dr. <%=doctor1%>'s Solution"><b>View</b></a>		  </td>
			  
			  
			   
            </tr>
            <%
			
					i=i+1;	
						
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("No Solution Requests Found");}
					
					%>
        </table>
		
			<p>&nbsp;</p>
		<div align="left" class="style22">
		  <div align="center"><a href="ServerMain.jsp" class="style11">Back</a></div>
		</div>
				  
				  
				  
				  
				  
            
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
