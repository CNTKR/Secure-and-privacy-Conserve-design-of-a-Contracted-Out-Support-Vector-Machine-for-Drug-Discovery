				
<%@ include file="connect.jsp"%>
<%@ page import="org.bouncycastle.util.encoders.Base64" %>


<%

String s11,symp="";
int i=0,count=0;
try
{
			


%><html>
<head>
<title>Same Symptom Drug Formula Providers In Chart..</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%

String query="select distinct symp from health_record"; 
Statement st=connection.createStatement();
ResultSet rs=st.executeQuery(query);
while ( rs.next() )
{

	symp=rs.getString(1);
	
	String symp1=new String(Base64.decode(symp.getBytes()));
	
	
String query1="select count(symp) from health_record where symp='"+symp+"' "; 
Statement st1=connection.createStatement();
ResultSet rs1=st1.executeQuery(query1);
while ( rs1.next() )
{
	
	count=rs1.getInt(1);
	
	%>
	
	myData["<%=i%>"]=["<%= symp1%>",<%= count%>];
        
	<%
	}
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF9900');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#000000');
	myChart.draw();
	
</script>

</body>
</html>
<%

}
catch(Exception e)
{
e.printStackTrace();
}
%>




