<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.niit.beans.Jobs"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<HTML>
<HEAD>
<TITLE>Job Apply</TITLE>
<link rel="shortcut icon"
	href="http://www.iconarchive.com/download/i47277/avosoft/warm-toolbar/user.ico">
	
<style >
body{
margin: 10px;
padding:20px;
}
h3{
text-align: center;}
#myInput {
  background-image: url('/css/searchicon.png'); /* Add a search icon to input */
  background-position: 10px 12px; /* Position the search icon */
  background-repeat: no-repeat; /* Do not repeat the icon image */
  width: 100%; /* Full-width */
  font-size: 16px; /* Increase font-size */
  padding: 12px 20px 12px 40px; /* Add some padding */
  border: 1px solid #ddd; /* Add a grey border */
  margin-bottom: 12px; /* Add some space below the input */
}
#myTable {
  border-collapse: collapse; /* Collapse borders */
  width: 100%; /* Full-width */
  border: 1px solid #ddd; /* Add a grey border */
  font-size: 18px; /* Increase font-size */
}
#myTable th, #myTable td {
  text-align: left; /* Left-align text */
  padding: 12px; /* Add padding */
}
#myTable tr {
  /* Add a bottom border to all table rows */
  border-bottom: 1px solid #ddd; 
}
#myTable tr.header, #myTable tr:hover {
  /* Add a grey background color to the table header and on hover */
  background-color: #f1f1f1;
}</style>
<script >
function myFunction() {
  // Declare variables 
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[5];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    } 
  }
}
function select(){
}
</script>
</HEAD>
<BODY>
<h3>All Jobs Posted</h3>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search by Skills..">
	<table border="1" width="500" align="center" id="myTable">
		<tr class="header">
			<th style="width:10%;" ><b>Job ID</b></th>
			<th style="width:10%;"><b>Job Title</b></th>
			<th style="width:10%;"><b>Company Name</b></th>
			<th style="width:20%;"><b>Company Person</b></th>
			<th style="width:20%;"><b>Req.Skills</b></th>
			<th style="width:20%;" hidden><b>company mail id</b></th>
			<th style="width:40%;"><b>Job Description</b></th>
			<th style="width:10%;"><b>Apply</b></th>
		</tr>
		<%
			List<Jobs> J = (List<Jobs>) request.getAttribute("JobList");
		if(J!=null){
			for (Jobs j : J) {
		%>
		<tr>
			<td><%=j.getJobId()%></td>
			<td><%=j.getJobName()%></td>
			<td><%=j.getCompanyName()%></td>
			<td><%=j.getCompanyContactPerson()%></td>
			<td><%=j.getRequiredSkills()%></td>
			<td hidden><%=j.getCompanymailId()%></td>
			<td><%=j.getJobdescription()%></td>
			<td><form action="ApplyToJob" method="post"><a href="ApplyToJob?id=<%=j.getJobId() %>&comp=<%=j.getCompanyName()%>&mail=<%=j.getCompanymailId()%>&title=<%=j.getJobName()%>">YES</a></form>
			
		</tr>
		<%}}%>
	</table>
</body>
</html>