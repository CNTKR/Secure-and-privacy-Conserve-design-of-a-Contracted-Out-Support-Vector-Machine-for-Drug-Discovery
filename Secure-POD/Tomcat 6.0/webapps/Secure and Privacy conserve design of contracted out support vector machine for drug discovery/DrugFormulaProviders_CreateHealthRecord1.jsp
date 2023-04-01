<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="org.bouncycastle.util.encoders.Base64" %>
<%@ page import="java.util.Date" %>
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
.style9 {font-size: 18px}
.style10 {font-size: 18px; color: #FF0000; }
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
          <h2 align="center" class="style4">Drug Formula  Record Creation Status..</h2>
          <div class="clr"></div>
          <div class="post_content">
		 
          <%
			       									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
													SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
													Date now = new Date();
		
													String strDate = sdfDate.format(now);
													String strTime = sdfTime.format(now);
													String dt = strDate + "   " + strTime;
		
		
					
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,ptname=null,symp=null,sdesc=null,age=null,cno=null,mail=null,address=null,ameasure=null,image=null,cloud=null,bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("ptname"))
							{
								ptname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("symp"))
							{
								symp=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("sdesc"))
							{
								sdesc=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("age"))
							{
								age=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("cno"))
							{
								cno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mail"))
							{
								mail=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("address"))
							{
								address=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("ameasure"))
							{
								ameasure=multi.getParameter(paramname);
							}
							
							
							
							
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) 
								{
									if (i != -1)
									 {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
							
						                }
									}	
									
								}
								
							}		
						}
						
						
						String symp1 = new String(Base64.encode(symp.getBytes()));
						String sdesc1 = new String(Base64.encode(sdesc.getBytes()));
						String age1 = new String(Base64.encode(age.getBytes()));
						String cno1 = new String(Base64.encode(cno.getBytes()));
						String mail1 = new String(Base64.encode(mail.getBytes()));
						String address1 = new String(Base64.encode(address.getBytes()));
						String ameasure1 = new String(Base64.encode(ameasure.getBytes()));
						
						
		
						FileInputStream fs1 = null;
			 			String query1="select * from health_record  where ptname='"+ptname+"' and symp='"+symp1+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                  </p>
                  </label>
            
		          <p align="center" class="style4" style="color:#000000"> <span class="style9">Details Already Uploaded for the Symptom <%=symp%>.</span></p>
		          <p align="center"><a href="DrugFormulaProviders_CreateHealthRecord.jsp" class="style5 style16 style35">Back</a></p>
		          <%
				
					   }
					   else
					   {
					   
					    			
					   
					  
					  
PreparedStatement ps=connection.prepareStatement("insert into health_record(ptname,symp,sdesc,age,cno,mail,address,ameasure,dt,image) values(?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,ptname);
						ps.setString(2,symp1);
						ps.setString(3,sdesc1);	
						ps.setString(4,age1);
						ps.setString(5,cno1);
						ps.setString(6,mail1);
						ps.setString(7,address1);						
						ps.setString(8,ameasure1);						
						ps.setString(9,dt);						
				
						ps.setBinaryStream(10, (InputStream)fs, (int)(file1.length()));	
							
				       
						
						if(f == 0)
							ps.setObject(10,null);
						else if(f == 12)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(10,fs1,fs1.available());
						}	
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
				  <p>&nbsp;</p>
                  <p align="center" class="style10" style="color:#000000">Drug Formula  Record Created Successfully.</p>
		          <p class="style19">&nbsp;</p>
		          <p align="center"><a href="DrugFormulaProvidersMain.jsp" class="style16">Back</a></p>
		          <%
			
					}}}
					catch (Exception e) 
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
