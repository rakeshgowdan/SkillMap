<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.niit.beans.AppliedJobs"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<HTML>
<HEAD>
<TITLE>Job Apply</TITLE>
<link rel="shortcut icon"
	href="http://www.iconarchive.com/download/i47277/avosoft/warm-toolbar/user.ico">
	
<style >
a.two:link {color:#ff0000;}
a.two:visited {color:#0000ff;}
a.two:hover {font-size:150%;}
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
}input[type=button], input[type=submit], input[type=reset] {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
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
    td = tr[i].getElementsByTagName("td")[6];
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
</script>
</HEAD>
<BODY>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search..">
	<table border="1" width="500" align="center" id="myTable">
		<tr class="header">
			<th style="width:60%;" ><b>Job Id</b></th>
			<th style="width:60%;"><b>Candidate mail</b></th>
			<th style="width:60%;"><b>Candidate Name</b></th>
			<th style="width:60%;"><b>Job Title</b></th>
			<th style="width:60%;"><b>CompanyName</b></th>
			<th style="width:60%;"><b>Company Mail</b></th>
			<th style="width:60%;"><b>Status</b></th>
			<th style="width:60%;"><b>Action</b></th>
		</tr>
		<%
			List<AppliedJobs> J = (List<AppliedJobs>) request.getAttribute("Appliedjobs");
		if(J!=null){
			for (AppliedJobs j : J) {
		%>
		<tr>
			<td><%=j.getJobId()%></td>
			<td><%=j.getEmp_mailid()%></td>
			<td><%=j.getEmpName()%></td>
			<td><%=j.getJobitle()%></td>
			<td><%=j.getCompanyName()%></td>
			<td><%=j.getCompanyMail()%></td>
			<td><%=j.getStatus()%></td>
			<td><a class="two" href="UpdateApplications?id=<%=j.getJobId()%>">YES</a></td>
		</tr>
		<%}}%>
	</table>


</body>
</html>
