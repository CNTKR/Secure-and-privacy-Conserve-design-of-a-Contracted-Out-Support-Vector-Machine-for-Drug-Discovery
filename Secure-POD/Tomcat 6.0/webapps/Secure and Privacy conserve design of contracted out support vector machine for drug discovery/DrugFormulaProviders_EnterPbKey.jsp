<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Friends Symptoms</title>
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
.style7 {color:#CC0033}		
.style9 {font-size: 18px}
.style10 {color:#006633}
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
          <h2 align="center" class="style4">All Friends Symptoms..</h2>
          <div class="clr"></div>
          <div class="post_content">
		  <p>&nbsp;</p>
		  <%
		  		String ptname=(String)application.getAttribute("ptname");
				String pbkey=request.getParameter("pbkey");
				
		  try 
			{
														
			String query1="select * from pbkey_req where pbkey='"+pbkey+"' and ptname='"+ptname+"' "; 
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(query1);
			if ( rs1.next()==true )
			{
								
								
								
			%>
								
		  <table width="700" border="1" align="center"  cellpadding="0" cellspacing="0"  >
               <tr>
                 <td  width="25" height="34" valign="baseline"  style="color: #2c83b0;"><div align="center" class="style6" ><b>SI NO</b></div></td>
				 <td  width="110" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style6" ><b> Friend Name </b></div></td>
                 <td  width="110" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style6" ><b> Symptom </b></div></td>
                 <td  width="60" height="34" valign="baseline"  style="color: #2c83b0;"><div align="center" class="style6" ><b> Image</b></div></td>
                 <td  width="81" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style6" ><b>Symptom Description </b></div></td>
                 <td  width="230" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style6" ><b>Age </b></div></td>
				 <td  width="105" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style6" ><b>Measurements Level </b></div></td>
				 <td  width="105" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style6" ><b>Upload Date </b></div></td>
				 <td  width="105" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style6" ><b>Comments</b></div></td>
				 <td  width="105" height="34" valign="baseline" style="color: #2c83b0;"><div align="center" class="style6" ><b>Solutions</b></div></td>
               </tr>
         
		 
		   
            <%
					  
				
					  String ptname1="",symp="",sdesc="",age="",cno="",mail="",address="",ameasure="",date="";
					  int i=1,j=0,count=0,r=0;
					
						try 
						{
														
						   	String query="select * from health_record where ptname!='"+ptname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								ptname1=rs.getString(2);
								symp=rs.getString(3);
								sdesc=rs.getString(4);
								age=rs.getString(5);
								cno=rs.getString(6);
								mail=rs.getString(7);
								address=rs.getString(8);
								ameasure=rs.getString(9);
								date=rs.getString(10);
								
								
								
								
								
								
								
						String symp1 = new String(Base64.decode(symp.getBytes()));
						String sdesc1 = new String(Base64.decode(sdesc.getBytes()));
						String age1 = new String(Base64.decode(age.getBytes()));
						String cno1 = new String(Base64.decode(cno.getBytes()));
						String mail1 = new String(Base64.decode(mail.getBytes()));
						String address1 = new String(Base64.decode(address.getBytes()));
						String ameasure1 = new String(Base64.decode(ameasure.getBytes()));
						
								
								
								count++;
								
						String str2="select * from frequest where ((requestfrom='"+ptname1+"'&&requestto='"+ptname+"') || (requestfrom='"+ptname+"'&&requestto='"+ptname1+"'))&& status='Accepted'"; 
						Statement st2=connection.createStatement();
						ResultSet rs2=st2.executeQuery(str2);
						if ( rs2.next() )
	   					{
								
					%>
            <tr>
              <td height="23"  valign="middle">
                  <div align="center" class="style5" >
                    <div align="center">
                    <%out.println(i);%>
                </div>
              </div></td>
			  <td height="23"  valign="middle">
                  <div align="center" class="style10" >
                    <div align="center">
                    <b><%out.println(ptname1);%></b>                </div>
              </div></td>
			  <td height="23"  valign="middle">
                  <div align="center" class="style7"  >
                    
   			    <b><%out.println(symp1);%> </b>  </div></td>
			  <td width="120" valign="middle" bgcolor="#FFFFFF"><div class="style3 style7 style9 style9" style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="symp_Pic.jsp?&id=<%=j%>" style="width:80px; height:80px;" />
              </div></td>
			   
			   <td height="23"  valign="middle">
                  <div align="center" class="style5"  >
                    
       			    <%out.println(sdesc1);%> 
              </div></td>
			  
              <td height="23"  valign="middle">
                  <div align="center" class="style5" >
                 	 <%out.println(age1);%> 
              </div></td>
			  
			  <td height="23"  valign="middle">
                  <div align="center" class="style5" >
                 	 <%out.println(ameasure1);%> 
              </div></td>
			  <td height="23"  valign="middle">
                  <div align="center" class="style5" >
                 	 <%out.println(date);%> 
              </div></td>
			 <td  width="105" align="left" valign="middle" height="23"><a href="DrugFormulaProviders_GiveComments.jsp?ptname=<%=ptname1%>&symp=<%=symp1%>&pbkey=<%=pbkey%>" class="style8" style="color:#660033"><b>Give Comment</b></a>		  </td>
			 <td  width="105" align="left" valign="middle" height="23"><a href="DrugFormulaProviders_GiveSolution.jsp?ptname=<%=ptname1%>&symp=<%=symp1%>&pbkey=<%=pbkey%>" class="style8" style="color:#006633"><b>Give Solution</b></a>		  </td>
            </tr>
            <%
				}
					i=i+1;	
						
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("Your Friends Symptom Details not Found");}
					
					%>
        </table>
		<%
			}
			else
			{
			%><p align="center"><span class="style57 style6 style9">Please Enter Correct Public Key !! </span></p>
		<%
			}
		  connection.close();
		}
		catch(Exception e)
		{
		  out.println(e.getMessage());
		}
		
		%>
		
			<p>&nbsp;</p>
		<div align="center" class="style22"><a href="DrugFormulaProvidersMain.jsp" class="style2">Back</a></div>
		
		
		
		
		
		
		
		  	  
				  
				  
				  
				  
            
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
