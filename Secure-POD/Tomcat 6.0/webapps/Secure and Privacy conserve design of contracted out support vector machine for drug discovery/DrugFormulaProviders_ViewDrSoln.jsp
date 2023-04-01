<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Drug Formula Tester Solutions</title>
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
.style6 {color: #660033;
		font-size:14px;}
.style9 {font-size: 14px}
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
          <h2 align="center" class="style4">Drug Formula Tester Solution..</h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
		  <table width="700" border="1" align="center"  cellpadding="0" cellspacing="0"  >
               <tr>
                 <td  width="25" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>SI NO</b></div></td>
				 <td  width="75" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b> Hospital Name </b></div></td>
                 <td  width="75" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b> Drug Formula Tester </b></div></td>
                 <td  width="73" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>Symptom</b></div></td>
                 <td  width="81" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style4 style6" ><b>Given Solution </b></div></td>
                 
				 
                 
               </tr>
         
		 
		   
            <%
					  
					  String ptname=request.getParameter("ptname");	
					  String ptname1=new String(Base64.encode(ptname.getBytes()));
					  String symp=request.getParameter("symp");
					  String symp1=new String(Base64.encode(symp.getBytes()));
					  String hname="",doctor="",date="";
					  int i=0,j=0,count=0,r=0;
					
						try 
						{
							
							
						   	String query="select * from doctor_soln where ptname='"+ptname1+"' and symp='"+symp1+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
				
								doctor=rs.getString(6);
								hname=rs.getString(5);
								date=rs.getString(7);
								
								String hname1=new String(Base64.decode(hname.getBytes()));
								String doctor1=new String(Base64.decode(doctor.getBytes()));
								
								
								i++;
								
					%>
            <tr>
              <td height="0"  valign="middle">
                  <div align="center" class="style5" >
                    <div align="center">
                    <%out.println(i);%>
                </div>
              </div></td>
			  <td height="0"  valign="middle">
                  <div align="center" style="color:#006633">
                    
       			    <b><%out.println(hname1);%> </b>
              </div></td>
			  <td height="0"  valign="middle">
                  <div align="center" title="Click to View Drug Formula Tester Profile" class="style7"  >
                    
       			    <b><%out.println(doctor1);%> </b>
              </div></td>
			  <td height="0"  valign="middle">
                  <div align="center" title="Click to View Symptom Details" class="style9"  >
                    
       			   <a href="DrugFormulaProviders_SymptomDetails.jsp?type=<%="DrugFormulaProviders_SymptomDetails"%>&ptname=<%=ptname%>&symp=<%=symp1%>" style="color:#006633"> <b><%out.println(symp);%> </b></a>
              </div></td>
			 <td  width="105" align="middle" valign="middle" height="23"><a href="DrugFormulaProviders_ViewDrSolnDetails.jsp?ptname=<%=ptname1%>&doctor=<%=doctor1%>&symp=<%=symp1%>&hname=<%=hname%>" class="style8" style="color:#006666"><b>View Given Solution</b></a>		  </td>
			  
			  
			   
            </tr>
            <%
			
					
						
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(i==0){out.print("Drug Formula Tester Solution not Found");}
					
					%>
        </table>
		
			<p>&nbsp;</p>
		<div align="right" class="style22"><a href="DrugFormulaProviders_RequestDrSoln.jsp" class="style11">Back</a></div>
				  
				  
				  
				  
				  
            
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
